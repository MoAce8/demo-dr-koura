import 'package:dr_koura/shared/constants.dart';
import 'package:flutter/material.dart';

class ContactUsSheet extends StatelessWidget {
  const ContactUsSheet({Key? key, required this.currentIndex})
      : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenHeight(context)*0.35,
      padding: EdgeInsets.symmetric(
          vertical: screenHeight(context) * 0.021,
          horizontal: screenWidth(context) * 0.03),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        color: currentIndex == 0 ? AppColors.primaryPurple : AppColors.crayola,
      ),
      child: Column(
        children: [
          Container(
            width: screenWidth(context) * 0.33,
            height: screenHeight(context) * 0.0025,
            decoration: BoxDecoration(
              color: AppColors.grey6,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          SizedBox(
            height: screenHeight(context) * 0.05,
          ),
          Text(
            'Contact Us',
            style: TextStyle(
              color: AppColors.white,
              fontSize: screenWidth(context)/9
            ),
          ),
          Text(
            'Now',
            style: TextStyle(
              color: AppColors.white,
              fontSize: screenWidth(context)/6.6,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}
