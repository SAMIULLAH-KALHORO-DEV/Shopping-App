import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/bottomnavbar.dart';
import '../widgets/griditem.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  List<Color> Iclist = [
    Color.fromARGB(255, 246, 111, 58),
    Color.fromARGB(255, 36, 131, 233),
    Color.fromARGB(255, 63, 208, 143),
  ];
  var imagelist = [
    'assets/images/slide1.png',
    'assets/images/slide3.png',
    'assets/images/slide4.png',
  ];

  var iconimagelist = [
    'assets/images/icon1.png',
    'assets/images/icon2.png',
    'assets/images/icon3.png',
    'assets/images/icon4.png',
    'assets/images/icon5.png',
    'assets/images/icon6.png',
    'assets/images/icon7.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(19, 6, 6, 6),
                              borderRadius: BorderRadius.circular(10)),
                          height: 40,
                          width: 40,
                          child: Icon(
                            CupertinoIcons.cart,
                          )),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(19, 6, 6, 6),
                            borderRadius: BorderRadius.circular(10)),
                        height: 40,
                        width: 40,
                        child: Icon(
                          CupertinoIcons.search,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Hello Rocky 🥰",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Lets gets somethings?",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black45,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var i = 0; i < 3; i++)
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              height: 150,
                              width: 280,
                              alignment: Alignment.centerRight,
                              decoration: BoxDecoration(
                                color: Iclist[i],
                                
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 20,
                                        right: 5.0,
                                        left: 20,
                                        bottom: 20,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '30% OFF DURING COVID 19',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            height: 40,
                                            width: 90,
                                            child: Center(
                                                child: Text(
                                              "Get Now",
                                              style: TextStyle(
                                                  color: Colors.orange.shade900,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    decoration: BoxDecoration(
                                        // color: Colors.green,
                                        image: DecorationImage(
                                            image: AssetImage(imagelist[i]))),
                                    height: 180,
                                    width: 110,
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Categories",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "SEE ALL",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 212, 95, 6),
                          // fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var i = 0; i < 7; i++)
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(19, 6, 6, 6),
                                borderRadius: BorderRadius.circular(10)),
                            height: 40,
                            width: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Image(image: AssetImage(iconimagelist[i])),
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  GridList(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavBar());
  }
}
