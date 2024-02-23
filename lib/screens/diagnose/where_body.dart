import 'package:dr_koura/shared/constants.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class BodyPartsScreen extends StatefulWidget {
  const BodyPartsScreen({Key? key}) : super(key: key);

  @override
  State<BodyPartsScreen> createState() => _BodyPartsScreenState();
}

class _BodyPartsScreenState extends State<BodyPartsScreen> {
  int picIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, double>> points = [
      {
        'x start point': screenWidth(context) * 0.68,
        'y start point': screenWidth(context) * 0.118,
        'x line point': screenWidth(context) * 0.59,
        'y edge point': screenWidth(context) * 0.06,
        'x edge point': screenWidth(context) * 0.45 + 20,
        'center 1': screenWidth(context) * 0.45,
        'center 2': screenWidth(context) * 0.187,
      },
      {
        'x start point': screenWidth(context) * 0.68,
        'y start point': screenWidth(context) * 0.234,
        'x line point': screenWidth(context) * 0.565,
        'y edge point': screenWidth(context) * 0.135,
        'x edge point': screenWidth(context) * 0.45 + 20,
        'center 1': screenWidth(context) * 0.45,
        'center 2': screenWidth(context) * 0.45,
      },
      {
        'x start point': screenWidth(context) * 0.68,
        'y start point': screenWidth(context) * 0.35,
        'x line point': screenWidth(context) * 0.64,
        'y edge point': screenWidth(context) * 0.21,
        'x edge point': screenWidth(context) * 0.54 + 20,
        'center 1': screenWidth(context) * 0.54,
        'center 2': screenWidth(context) * 0.28,
      },
      {
        'x start point': screenWidth(context) * 0.68,
        'y start point': screenWidth(context) * 0.465,
        'x line point': screenWidth(context) * 0.59,
        'y edge point': screenWidth(context) * 0.335,
        'x edge point': screenWidth(context) * 0.448 + 20,
        'center 1': screenWidth(context) * 0.448,
        'center 2': screenWidth(context) * 0.448,
      },
      {
        'x start point': screenWidth(context) * 0.68,
        'y start point': screenWidth(context) * 0.581,
        'x line point': screenWidth(context) * 0.59,
        'y edge point': screenWidth(context) * 0.415,
        'x edge point': screenWidth(context) * 0.448 + 20,
        'center 1': screenWidth(context) * 0.448,
        'center 2': screenWidth(context) * 0.448,
      },
      {
        'x start point': screenWidth(context) * 0.68,
        'y start point': screenWidth(context) * 0.696,
        'x line point': screenWidth(context) * 0.65,
        'y edge point': screenWidth(context) * 0.57,
        'x edge point': screenWidth(context) * 0.498 + 20,
        'center 1': screenWidth(context) * 0.498,
        'center 2': screenWidth(context) * 0.24,
      },
      {
        'x start point': screenWidth(context) * 0.68,
        'y start point': screenWidth(context) * 0.812,
        'x line point': screenWidth(context) * 0.65,
        'y edge point': screenWidth(context) * 0.66,
        'x edge point': screenWidth(context) * 0.498 + 20,
        'center 1': screenWidth(context) * 0.498,
        'center 2': screenWidth(context) * 0.24,
      },
    ];
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
              width: screenWidth(context),
              height: screenWidth(context) * 0.94,
              padding:
                  EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.03),
              child: CustomPaint(
                foregroundPainter: MyPainter(
                  center1: points[picIndex]['center 1']!,
                  center2: points[picIndex]['center 2']!,
                  xEdgePoint: points[picIndex]['x edge point']!,
                  xLinePoint: points[picIndex]['x line point']!,
                  xStartPoint: points[picIndex]['x start point']!,
                  yEdgePoint: points[picIndex]['y edge point']!,
                  yStartPoint: points[picIndex]['y start point']!,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenWidth(context)*0.63,
                      height: screenWidth(context)*0.94,
                      child: Image.asset(
                        'assets/images/full body.png',
                      ),
                    ),
                    SizedBox(
                      width: screenWidth(context) * 0.03,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: screenWidth(context) * 0.004),
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth(context) * 0.0125,
                          vertical: screenHeight(context) * 0.01),
                      width: screenWidth(context) * 0.27,
                      height: screenWidth(context) * 0.83,
                      child: Column(
                        children: [
                          pressButton(context, 0, 'Head'),
                          SizedBox(
                            height: screenWidth(context) * 0.038,
                          ),
                          pressButton(context, 1, 'Neck'),
                          SizedBox(
                            height: screenWidth(context) * 0.038,
                          ),
                          pressButton(context, 2, 'Shoulder'),
                          SizedBox(
                            height: screenWidth(context) * 0.038,
                          ),
                          pressButton(context, 3, 'Back'),
                          SizedBox(
                            height: screenWidth(context) * 0.038,
                          ),
                          pressButton(context, 4, 'Lower Back'),
                          SizedBox(
                            height: screenWidth(context) * 0.038,
                          ),
                          pressButton(context, 5, 'Leg'),
                          SizedBox(
                            height: screenWidth(context) * 0.038,
                          ),
                          pressButton(context, 6, 'Knee'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InkWell pressButton(BuildContext context, int id, String name) {
    return InkWell(
      onTap: () {
        setState(() {
          picIndex = id;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: picIndex == id ? AppColors.primaryPurple : AppColors.grey9,
        ),
        width: screenWidth(context) * 0.25,
        height: screenWidth(context) * 0.078,
        child: Center(
            child: Text(name,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: picIndex == id ? AppColors.white : AppColors.black,
                    ))),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  MyPainter(
      {required this.xStartPoint,
      required this.yStartPoint,
      required this.xLinePoint,
      required this.yEdgePoint,
      required this.xEdgePoint,
      required this.center1,
      required this.center2});

  final double xStartPoint;
  final double yStartPoint;
  final double xLinePoint;
  final double yEdgePoint;
  final double xEdgePoint;
  final double center1;
  final double center2;

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(xStartPoint, yStartPoint)
      ..lineTo(xLinePoint, yStartPoint)
      ..lineTo(xLinePoint, yEdgePoint)
      ..lineTo(xEdgePoint, yEdgePoint);

    final center11 = Offset(center1, yEdgePoint);
    final center22 = Offset(center2, yEdgePoint);
    const radius = 20.0;

    final paint = Paint()
      ..color = AppColors.primaryPurple
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    canvas.drawPath(path, paint);
    canvas.drawCircle(center11, radius, paint);
    canvas.drawCircle(center22, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
