import 'package:flutter/material.dart';
// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  List<Icon> IconList = [
    Icon(Icons.abc),
    Icon(Icons.home),
    Icon(Icons.person),
    Icon(Icons.handshake),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          // for vertical use column
          // for horizontal use Row aur 
          children: [
                  for(var i=0; i<IconList.length; i++)
                  //--- OR--- for(var i=0; i<4; i++)

      
            Container(
              height: 50,
              width: 50,
              child: IconList[i],
            ),
          ],
        ),
      ),
    );
  }
}
