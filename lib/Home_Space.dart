import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:space_world/Data_class.dart';
import 'package:space_world/Explore_Space.dart';
import 'package:space_world/Space_Images.dart';

import 'ElvatedButtonSpace.dart';

class HomeSpace extends StatelessWidget {
  static const String RouteName = 'home';
  final List<Dataclass> trnsdata = [
    Dataclass(
        title: 'Explore Earth ',
        name: 'Earth',
        path: SpaceImages.earthimage,
        About:
        "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns",
        discribion: "Earth: Our Blue Marble",
        DistanefromSun: 149598026,
        gravity: 9.81,
        lenthofday: 23.93,
        mass: 5.972 * 10e34,
        orbitalperiod: 1,
        radius: 6371,
        surfacearea: 5.10 * 10e8),
    Dataclass(
        title: 'Explore Jupiter',
        name: 'Jupiter',
        path: SpaceImages.jupitierimage,
        About:
        "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
        discribion: "Jupiter: The Gas Giant",
        DistanefromSun: 778547669,
        gravity: 24.79,
        lenthofday: 9.92,
        mass: 1.898  * 10e27,
        orbitalperiod: 11.86,
        radius: 69911,
        surfacearea: 6.21  * 10e15),
    Dataclass(
        title: 'Explore Mercury',
        name: 'Mercury',
        path: SpaceImages.mercuryimage,
        About:
        "Mercury is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns",
        discribion: "Mercury: The Closest Planet",
        DistanefromSun: 57909227,
        gravity: 3.7,
        lenthofday: 1407.6,
        mass: 3.301 * 10e23,
        orbitalperiod: 0.24,
        radius: 2439.7,
        surfacearea: 7.48  * 10e7),
    Dataclass(
        title: 'Explore Mars',
        name: 'Mars',
        path: SpaceImages.marsimage,
        About:
        "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
        discribion: "Mars: The Red Planet",
        DistanefromSun: 227943824,
        gravity: 3.71,
        lenthofday: 24.62,
        mass: 6.39*10e23,
        orbitalperiod: 1.88,
        radius: 3389.5,
        surfacearea: 1.45 * 10e8),
    Dataclass(
        title: 'Explore Neptune',
        name: 'Neptune',
        path: SpaceImages.neptuneimage,
        About:
        "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
        discribion: "Neptune: The Distant World",
        DistanefromSun: 4498252900,
        gravity: 11.15,
        lenthofday: 16.11,
        mass: 1.024 * 10e26,
        orbitalperiod: 164.8,
        radius: 24622,
        surfacearea: 7.65 * 10e15),
    Dataclass(
        title: 'Explore Saturn',
        name: 'Saturn',
        path: SpaceImages.saturnimage,
        About:
        "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
        discribion: "Saturn: The Ringed Planet",
        DistanefromSun: 1426666422,
        gravity: 10.44,
        lenthofday: 10.66,
        mass: 5.683  * 10e26,
        orbitalperiod: 29.46,
        radius: 58232,
        surfacearea: 4.27 * 10e15),
    Dataclass(
        title: 'Explore Sun',
        name: 'Sun',
        path: SpaceImages.sunimage,
        About:
        "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
        discribion: "The Sun: Our Solar System's Star",
        DistanefromSun: 0,
        gravity: 274,
        lenthofday: 0,
        mass: 1.989 * 10e30,
        orbitalperiod: 0,
        radius: 695700,
        surfacearea: 6.09 * 10e12),
    Dataclass(
        title: 'Explore Uranus',
        name: 'Uranus',
        path: SpaceImages.uranusimage,
        About:
        "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
        discribion: "Uranus: The Tilted Planet",
        DistanefromSun: 2870990000,
        gravity: 8.69,
        lenthofday: 17.24,
        mass: 8.681 * 10e25,
        orbitalperiod: 84.01,
        radius: 25362,
        surfacearea: 8.1 * 10e15),
    Dataclass(
        title: 'Explore Venus',
        name: 'Venus',
        path: SpaceImages.venusimage,
        About:
        "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
        discribion: "Venus: Earth's Toxic Twin",
        DistanefromSun: 108209072,
        gravity: 8.87,
        lenthofday: 5832.2,
        mass: 4.867 * 10e24,
        orbitalperiod: 0.62,
        radius: 6051.8,
        surfacearea: 4.60 * 10e8),
  ];

  CarouselSliderController carouselController = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Stack(children: [
              Container(
                  height: 250,
                  child: Image.asset(
                    SpaceImages.Rectangle4image,
                  )),
              Column(
                children: [
                  Container(
                    height: 180,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Explore",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Wich planet \n would you like to explore ?",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              )
            ]),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(6),
                child: CarouselSlider.builder(
                    disableGesture: true,
                    carouselController: carouselController,
                    itemCount: trnsdata.length,
                    itemBuilder: (context, index, realIndex) {
                      return Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              trnsdata[index].path,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        carouselController.previousPage();
                                      },
                                      style: IconButton.styleFrom(
                                          padding: EdgeInsets.all(12),
                                          backgroundColor: Color(0xffEE403D),
                                          shape: CircleBorder()),
                                      icon: Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                              Center(
                                child: Text(
                                  trnsdata[index].name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    carouselController.nextPage();
                                  },
                                  style: IconButton.styleFrom(
                                      padding: EdgeInsets.all(12),
                                      backgroundColor: Color(0xffEE403D),
                                      shape: CircleBorder()),
                                  icon: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Elvatedbuttonspace(
                            titleScreen: trnsdata[index].title,
                            page: ExploreSpace.RouteName,
                            navigte: (context, page) {
                              Navigator.of(context)
                                  .pushNamed(page, arguments: trnsdata[index]);
                            },
                          )
                        ],
                      );
                    },
                    options: CarouselOptions(
                        autoPlay: false,
                        viewportFraction: 1,
                        height: double.infinity,
                        scrollPhysics: AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
