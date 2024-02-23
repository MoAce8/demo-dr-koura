import 'package:dr_koura/shared/constants.dart';
import 'package:flutter/material.dart';

class BodyPartsScreen extends StatefulWidget {
  const BodyPartsScreen({Key? key}) : super(key: key);

  @override
  State<BodyPartsScreen> createState() => _BodyPartsScreenState();
}

class _BodyPartsScreenState extends State<BodyPartsScreen> {
  int picIndex = 0;

  List pics = [
    'no pain',
    'head pain',
    'neck pain',
    'shoulder pain',
    'back pain',
    'lower back pain',
    'leg pain',
    'knee pain',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/body background.png'),
              fit: BoxFit.none,
              alignment: Alignment.topCenter),
          color: AppColors.white),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight(context) * 0.18,
            ),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Where do you feel pain ?',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Improve your strength and endurance. Choose a muscle group you want to target.',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight(context) * 0.08,
            ),
            Container(
              width: double.infinity,
              padding:
                  EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.03),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Image.asset('assets/images/${pics[picIndex]}.png'),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: screenWidth(context) * 0.004),
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth(context) * 0.0125,
                        vertical: screenHeight(context) * 0.01),
                    width: screenWidth(context) * 0.27,
                    height: screenHeight(context) * 0.37,
                    child: Column(
                      children: [
                        pressButton(context, 1),
                        SizedBox(
                          height: screenHeight(context) * 0.0175,
                        ),
                        pressButton(context, 2),
                        SizedBox(
                          height: screenHeight(context) * 0.0175,
                        ),
                        pressButton(context, 3),
                        SizedBox(
                          height: screenHeight(context) * 0.0175,
                        ),
                        pressButton(context, 4),
                        SizedBox(
                          height: screenHeight(context) * 0.0175,
                        ),
                        pressButton(context, 5),
                        SizedBox(
                          height: screenHeight(context) * 0.0175,
                        ),
                        pressButton(context, 6),
                        SizedBox(
                          height: screenHeight(context) * 0.0175,
                        ),
                        pressButton(context, 7),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  InkWell pressButton(BuildContext context, int id) {
    return InkWell(
      onTap: () {
        setState(() {
          if (picIndex == id) {
            picIndex = 0;
          } else {
            picIndex = id;
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
        ),
        width: screenWidth(context) * 0.25,
        height: screenHeight(context) * 0.035,
      ),
    );
  }
}
