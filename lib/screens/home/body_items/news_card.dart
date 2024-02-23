import 'package:carousel_slider/carousel_slider.dart';
import 'package:dr_koura/shared/constants.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatefulWidget {
  const NewsCard({Key? key}) : super(key: key);

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: [
            Container(
              margin: const EdgeInsets.all(5),
              child: Image.asset('assets/images/hand.png',fit: BoxFit.fitWidth,),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              child: Image.asset('assets/images/hand.png'),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              child: Image.asset('assets/images/hand.png'),
            ),
          ],
          options: CarouselOptions(
            height: screenHeight(context) * 0.27,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
            onPageChanged: (index, _) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildContainer(context,0),
            SizedBox(width: screenWidth(context)*0.01,),
            buildContainer(context,1),
            SizedBox(width: screenWidth(context)*0.01,),
            buildContainer(context,2),
          ],
        )
      ],
    );
  }

  Container buildContainer(BuildContext context, int index) {
    return Container(
            width: currentIndex==index?screenWidth(context)*0.063:screenWidth(context)*0.02,
            height: currentIndex==index?screenWidth(context)*0.022:screenWidth(context)*0.02,
            decoration: BoxDecoration(
                 color:currentIndex==index?AppColors.lightPurple:AppColors.lightPurple.withOpacity(0.3),
              borderRadius: BorderRadius.circular(33),
            ),
          );
  }
}
