import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AdsSlider extends StatelessWidget {
  AdsSlider({Key? key, required this.currentIndex}) : super(key: key);

  final int currentIndex;

  List egAds = [
    'assets/images/eg ad 1.png',
    'assets/images/eg ad 2.png',
    'assets/images/eg ad 3.png',
    'assets/images/eg ad 4.png',
    'assets/images/eg ad 1.png',
    'assets/images/eg ad 2.png',
  ];

  List uaeAds = [
    'assets/images/uae ad 1.png',
    'assets/images/uae ad 2.png',
    'assets/images/uae ad 3.png',
    'assets/images/uae ad 4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: currentIndex == 0
          ? egAds.map((e) => Image.asset(e)).toList()
          : uaeAds.map((e) => Image.asset(e)).toList(),
      options: CarouselOptions(
        disableCenter: true,
        viewportFraction: 0.25,
        enableInfiniteScroll: false,
        padEnds: false,
      ),
    );
  }
}
