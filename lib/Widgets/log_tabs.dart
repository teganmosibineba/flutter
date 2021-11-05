import 'package:flutter/material.dart';

class logintabs extends StatefulWidget {
  logintabs({required this.onTabChanged });
  final Function(int) onTabChanged;


  @override
  _logintabsState createState() => _logintabsState();
}

class _logintabsState extends State<logintabs> {

  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedTab = _selectedTab == 1 ? 0 : 1;

            widget.onTabChanged(_selectedTab);

          });

    },
        child: Container(

        margin: const EdgeInsets.all(32),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50)
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tabButton('Login', _selectedTab == 0 ? true : false ),
            tabButton('signup', _selectedTab == 0 ? false : true),
          ],
        ),

     ),
    ),
    );
  }
   Widget tabButton(String text, bool selected){
    return AnimatedContainer(
      duration: Duration(milliseconds: 1000),
      curve: Curves.fastLinearToSlowEaseIn,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue. withAlpha(selected ? 20 : 0),
        borderRadius: BorderRadius.circular(60),
      ),
      child: Text(
        text ?? 'Button',
        style: TextStyle(
        color: selected ? Color(0xAF2525FF) :Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),),
    );

  }
}
