import 'package:flutter/material.dart';
import 'package:space_world/Data_class.dart';
import 'package:space_world/Home_Space.dart';
import 'package:space_world/Textdiscrib.dart';

import 'Space_Images.dart';

class ExploreSpace extends StatelessWidget {
  static const String RouteName = 'Eplore';
  ExploreSpace();

  @override
  Widget build(BuildContext context) {
    Dataclass args = ModalRoute.of(context)?.settings.arguments as Dataclass;
    return Container(
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage(SpaceImages.Rectangle4image),
                alignment: Alignment.topCenter)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(toolbarHeight: 80,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).popAndPushNamed(HomeSpace.RouteName);
                },
                style: IconButton.styleFrom(
                    padding: EdgeInsets.all(12),
                    backgroundColor: Color(0xffEE403D),
                    shape: CircleBorder()),
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            backgroundColor: Colors.transparent,
            title: Center(
              child: Text(
                args.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.only(left: 10, right: 5, top: 65),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      args.discribion,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Colors.white),
                    )
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 343,
                              height: 343,
                              child: Image.asset(
                                args.path,
                                fit: BoxFit.contain,
                              )),
                          Row(
                            children: [
                              Text(
                                'About',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Column(
                              children: [
                                Text(
                                  args.About,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Textdiscrib(
                              Dscrib:
                              'Distance from Sun (km) : ${args.DistanefromSun}'),
                          Textdiscrib(
                              Dscrib:
                              'Length of Day (hours) :${args.lenthofday}'),
                          Textdiscrib(
                              Dscrib:
                              'Orbital Period (Earth years) :${args.orbitalperiod}'),
                          Textdiscrib(Dscrib: 'Radius (km) : ${args.radius}'),
                          Textdiscrib(Dscrib: 'Mass (kg) :${args.mass}'),
                          Textdiscrib(
                              Dscrib: 'Gravity (m/s²) :${args.gravity}'),
                          Textdiscrib(
                              Dscrib: 'Surface Area (km²) :${args.surfacearea}')
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
