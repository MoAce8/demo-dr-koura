import 'package:dr_koura/shared/constants.dart';
import 'package:flutter/material.dart';

class HomePic extends StatelessWidget {
  const HomePic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) * 0.36,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/doctor background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Image.asset('assets/images/doctor.png',
            alignment: Alignment.bottomRight),
      ),
    );
  }
}
