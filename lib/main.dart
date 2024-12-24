import 'package:flutter/material.dart';
import 'package:space_world/Explore_Space.dart';
import 'package:space_world/Home_Space.dart';
import 'package:space_world/Login_Space.dart';

main (){
  runApp(SpaceApp());
}
class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Space App',
        routes: {
          LoginSpace.RouteName:(context)=>LoginSpace(),
          HomeSpace.RouteName:(context)=> HomeSpace(),
          ExploreSpace.RouteName:(context)=>ExploreSpace(),

        },
        initialRoute: LoginSpace.RouteName
    );
  }
}
