import 'package:flutter/material.dart';

class AppPrimaryButton extends StatelessWidget {

  AppPrimaryButton({required this.text } );
  final String text;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double. infinity,
      padding: const EdgeInsets.symmetric(
        vertical:  16,
        horizontal: 80,

      ),
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent.shade200,
        borderRadius: BorderRadius.circular(90),
        
      ),
      child:
      Text  (text ?? 'primary button', style: TextStyle(
        fontSize: 14,fontWeight:  FontWeight.w600,
        color: Colors.white,

      ),
      textAlign:  TextAlign. center,
      ),

    );
  }
}
