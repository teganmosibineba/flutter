import 'package:flutter/material.dart';
import 'package:untitled5/Widgets/login_form_field.dart';

import 'app_primary_button.dart';

class loginform extends StatelessWidget {
  const loginform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 420,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12)
      ),
      padding: const EdgeInsets.all(24) ,
      child: Column(
        children:[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
              Text('kraft Cloud',style: TextStyle(
                fontSize: 19,fontWeight: FontWeight.w600,
                color: Colors.deepPurpleAccent,


              ), ),
                Text('welcome Back', style: TextStyle(
                  color: Colors.deepPurpleAccent,
                ),)
              ],

            ),

            Spacer(),
            Container(
              padding: const EdgeInsets.all(16) ,
              color: Colors.deepPurpleAccent.withAlpha(20),
            ),
          ],



        ),
          Spacer(),
          Spacer(),
          Spacer(),
          Spacer(),
          Spacer(),
          Spacer(),
          Spacer(),
          Spacer(),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black.withAlpha(60),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),

            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16),
                border: InputBorder.none,
                hintStyle:  TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black.withAlpha(60),
                ),
                hintText: 'Email ....',


              ),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black,



              ),

            ),
          ),
          Spacer(),
          loginformfield(
            hintText: 'password....', controller: TextEditingController(),
          ),
          SizedBox(
            height: 20,),
          //loginformfield(
            //hintText: 'password....', controller: TextEditingController(),
          //),
          AppPrimaryButton(
            text: 'Login',
          ),
          SizedBox(height:  20,),
          Text('Forgot password?', style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color:  Colors.deepPurpleAccent,
          ) ,)

      ],

      ),
    );
  }
}
