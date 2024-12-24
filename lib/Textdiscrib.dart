import 'package:flutter/material.dart';

class Textdiscrib extends StatelessWidget {
  String Dscrib;
   Textdiscrib({required this.Dscrib});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8),
      child: Text(Dscrib, style: TextStyle(
          fontWeight: FontWeight.w700,fontSize: 16,color: Colors.white),),
    );
  }
}
