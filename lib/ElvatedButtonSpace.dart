
import 'package:flutter/material.dart';

class Elvatedbuttonspace extends StatelessWidget {
  String titleScreen;
  String page;
  Function(BuildContext, String) navigte;
  Elvatedbuttonspace({
    required this.titleScreen,
    required this.page,
    required this.navigte,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          navigte(context, page);
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          backgroundColor: Color(0xffEE403D),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(29)),
        ),
        child: Row(
          children: [
            Expanded(
                child: Text(
                  titleScreen,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                )),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
            )
          ],
        ));
  }
}

