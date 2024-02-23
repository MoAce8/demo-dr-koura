import 'package:carousel_slider/carousel_slider.dart';
import 'package:dr_koura/shared/constants.dart';
import 'package:flutter/material.dart';

class TestimonialsCard extends StatelessWidget {
  const TestimonialsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(items: [
      Container(
        margin: const EdgeInsets.all(5),
        child: Image.asset('assets/images/Testimonial.png'),
      ),
      Container(
        margin: const EdgeInsets.all(5),
        child: Image.asset('assets/images/Testimonial.png'),
      ),
      Container(
        margin: const EdgeInsets.all(5),
        child: Image.asset('assets/images/Testimonial.png'),
      ),
      Container(
        margin: const EdgeInsets.all(5),
        child: Image.asset('assets/images/Testimonial.png'),
      ),
    ], options: CarouselOptions(
      height: screenHeight(context) * 0.3,
      disableCenter: true,
      viewportFraction: 0.45,
      enableInfiniteScroll: false,
      padEnds: false,
    ),);
  }
}
