import 'package:flutter/material.dart';
import 'package:space_world/ElvatedButtonSpace.dart';
import 'package:space_world/Home_Space.dart';
import 'package:space_world/Space_Images.dart';

class LoginSpace extends StatelessWidget {
  static const RouteName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0E0E0E),
        body: Stack(
          children: [
            Image.asset(SpaceImages.frame1image),
            Padding(
              padding: EdgeInsets.all(18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                              'Explore The Universe',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 48,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ],
                    ),
                  ),
                  Elvatedbuttonspace(
                    titleScreen: 'Explore',
                    page: HomeSpace.RouteName,
                    navigte: (context, page) {
                      Navigator.of(context).pushReplacementNamed(page);
                    },
                  )
                ],
              ),
            )
          ],
        ));
  }
}
