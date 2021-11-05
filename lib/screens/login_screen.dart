import 'package:flutter/material.dart';
import 'package:untitled5/Widgets/log_tabs.dart';
import 'package:untitled5/Widgets/login_form_widget.dart';
import 'dart:math' as math ;

import 'package:untitled5/Widgets/sign_up.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> with SingleTickerProviderStateMixin{

  //double _loginRotationAngle = 180;

  late Animation<double> _rotationAnimation;
  late AnimationController _animationController;
  bool _isloginformActive = true;

    static Matrix4 _pmat(num pv){
      return new Matrix4(
       1.0, 0.0, 0.0, 0.0,//
       0.0, 1.0, 0.0, 0.0,//
       0.0, 0.0, 1.0, pv * 0.001,//
        0.0, 0.0, 0.0, 1.0,

    );
  }
  Matrix4 perspective = _pmat(1.0);

  @override
  void initState() {
    super.initState();
    
    _animationController = AnimationController(
      vsync: this , duration: Duration(milliseconds: 1000),
    );
    _startRotation();

  }
  void _startRotation(){
    _animationController.reset();

    _rotationAnimation = Tween<double>(
      begin: _isloginformActive ? 0 : 180,
      end:  _isloginformActive ? 180 : 0,
        ).chain
      (CurveTween(curve: Curves.fastLinearToSlowEaseIn  ),
      )
        .animate(_animationController)..addListener(() {setState(() {

        });});

    _animationController.forward();


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent.shade200,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          pageHeader(),

          SizedBox(height: 42,),


          Stack(
            children:[
               AnimatedOpacity(
                 opacity: _isloginformActive ? 1 : 0,
                 duration:  Duration(milliseconds: 1000),
                 curve: Curves.fastLinearToSlowEaseIn,
                 child: Transform(
                    transform: perspective.scaled(
                        1.0,1.0,1.0)
                      ..rotateX(0)
                      ..rotateY(math.pi - _rotationAnimation.value * math.pi/ 180)
                      ..rotateZ(0) ,
                    alignment: FractionalOffset.center,
                    child: signup(),
              ),
               ),

              AnimatedOpacity(
                  opacity: _isloginformActive ? 0 : 1,
                  duration:  Duration(milliseconds: 1000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  child: Transform(
                transform: perspective.scaled(
                    1.0,1.0,1.0)
                  ..rotateX(0)
                  ..rotateY(math.pi - (180 *_rotationAnimation.value) * math.pi/ 180)
                  ..rotateZ(0) ,
                alignment: FractionalOffset.center,
                child: loginform()
            ),
              ),
      ],
    ),


          Spacer(),
          logintabs(
            onTabChanged: (value ) {  
             _isloginformActive = value == 0 ?  true : false ;

             _startRotation();
            },
          ),
        ],


      ),

    );
  }
  Widget pageHeader() {
    return Container(
      margin: const EdgeInsets.all(35),
      child: Text(
        'login or create a new\naccount to continue',
        style: TextStyle(
            fontSize: 25,
            color: Colors.white,fontWeight: FontWeight.w600


        ),
      ),
    );
  }
}



