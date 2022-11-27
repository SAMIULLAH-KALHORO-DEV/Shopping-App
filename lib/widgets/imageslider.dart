import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ImageSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: Colors.white,
      onPageChanged: (value) {},
      autoPlayInterval: 3000,
      height: 270,
      indicatorBackgroundColor: Colors.red,
      indicatorRadius: 3,
      isLoop: true,
      children: [
        Image.asset(
          'assets/images/p1.png',

          // fit: BoxFit.fitWidth,
        ),
        Image.asset(
          'assets/images/p2.png',

          // fit: BoxFit.cover,
        ),
      ],
    );
  }
}
