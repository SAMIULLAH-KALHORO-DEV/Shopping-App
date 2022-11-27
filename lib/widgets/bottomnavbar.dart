import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/my_cart.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          // color: Colors.greenAccent,
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 45,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 253, 240, 231),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.home,
                          color: Colors.orange,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Home",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Icon(Icons.favorite, size: 30, color: Colors.black38),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyCart()));
                  },
                  child: Icon(CupertinoIcons.cart_fill,
                      size: 30, color: Colors.black38),
                ),
                Icon(Icons.person, size: 30, color: Colors.black38),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
