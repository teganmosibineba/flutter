import 'package:flutter/material.dart';

class loginformfield extends StatelessWidget {
  loginformfield({ required this.hintText, required this.controller});
  final String hintText;
  final TextEditingController controller;



  @override
  Widget build(BuildContext context) {
    return Container( decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black.withAlpha(60),
        width: 1,
      ),
      borderRadius: BorderRadius.circular(12),

    ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          border: InputBorder.none,
          hintStyle:  TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black.withAlpha(60),
          ),
          hintText: hintText ?? 'Hint ....',

        ),
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.black,



        ),

      ),


    );
  }
}

