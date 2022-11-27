import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MyCart extends StatelessWidget {
  List<Color> Colorlist = [
    Color.fromARGB(255, 249, 235, 226),
    Color.fromARGB(255, 233, 244, 249),
    Color.fromARGB(255, 238, 223, 224),
    Color.fromARGB(255, 227, 229, 233),
  ];

  List<Image> Imagelist = [
    Image.asset(
      "assets/images/product1.png",
      height: 60,
      width: 60,
    ),
    Image.asset(
      "assets/images/product2.png",
      height: 60,
      width: 60,
    ),
    Image.asset(
      "assets/images/product3.png",
      height: 60,
      width: 60,
    ),
    Image.asset(
      "assets/images/product4.png",
      height: 60,
      width: 60,
    ),
  ];

  List<String> Titlename = [
    'Appe Watch Series 3',
    'Sony Ear Headphone',
    'Levi\'s T-shirt',
    'Nike man shoes',
  ];
  List<String> Itemsize = [
    'Size: 36',
    'Size: M',
    'Size: S',
    'Size: 40',
  ];

  List<String> Price = [
    '\$140',
    '\$50',
    '\$40',
    '\$140',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  Text(
                    "My cart",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(""),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              for (var i = 0; i < 4; i++)
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 248, 248, 248),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width / 4,
                            margin: const EdgeInsets.only(left: 8.0),
                            decoration: BoxDecoration(
                              color: Colorlist[i],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Imagelist[i],
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.8,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                                top: 20,
                                bottom: 25,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    Titlename[i],
                                    style: GoogleFonts.varela(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    Itemsize[i],
                                    style: TextStyle(
                                      color: Colors.black38,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        Price[i],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 25,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(CupertinoIcons.minus,
                                                  color: Colors.orange),
                                              Text("1"),
                                              Icon(CupertinoIcons.minus,
                                                  color: Colors.orange),
                                            ]),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    "\$300",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 2 * 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 241, 106, 38),
                ),
                child: Center(
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
