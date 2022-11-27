import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/imageslider.dart';

// ignore: must_be_immutable
class ProductDetails extends StatelessWidget {
  var sizelist = [
    '35',
    '36',
    '37',
    '38',
    '39',
    '40',
    '41',
    '42',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 235, 235),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              height: 350,
              width: MediaQuery.of(context).size.width,
              // color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      hoverColor: Colors.black54,
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(child: ImageSlider()),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Apple Watch Series 6",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            for (var i = 0; i < 5; i++)
                              Icon(Icons.star,
                                  color: Colors.yellow.shade600, size: 18),
                            SizedBox(width: 20),
                            Text("\(4500\)")
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "\$140 ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "\$200",
                              style: TextStyle(
                                  color: Colors.black45,
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Avaliable in stock",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'About',
                    style: GoogleFonts.varela(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                        'The watch that I got was really beautifully and trendy. It was the Ben 10 watch, which I am very fond of. It is red in color and has beautiful Ben 10 pictues.'),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var i = 0; i < 8; i++)
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(19, 6, 6, 6),
                                borderRadius: BorderRadius.circular(10)),
                            height: 50,
                            width: 50,
                            child: Center(
                              child: Text(
                                sizelist[i],
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context)
                          .showMaterialBanner(MaterialBanner(
                        onVisible: () {
                          Timer(Duration(seconds: 3), () {
                            ScaffoldMessenger.of(context)
                                .hideCurrentMaterialBanner();
                          });
                        },
                        padding: const EdgeInsets.all(10),
                        content: const Text("added Successfully"),
                        leading: const Icon(CupertinoIcons.cart),
                        elevation: 5,
                        actions: <Widget>[
                          TextButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context)
                                    .hideCurrentMaterialBanner();
                              },
                              child: Text('Hide'))
                        ],
                      ));
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2 * 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange,
                      ),
                      child: Center(
                        child: Text(
                          "Add to cart",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
