import 'package:dr_koura/shared/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeInfo extends StatelessWidget {
  const HomeInfo({Key? key, required this.currentIndex}) : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) * 0.5,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: 20, vertical: screenHeight(context) * 0.115),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: screenWidth(context) * 0.11,
                width: screenWidth(context) * 0.11,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/doctor avatar.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth(context) * 0.05,
              ),
              Text(
                'Hello, Ahmed',
                style: TextStyle(
                    fontSize: screenWidth(context) / 17,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white),
              ),
              const Spacer(),
              Container(
                height: screenWidth(context) * 0.11,
                width: screenWidth(context) * 0.11,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(66),
                  border: Border.all(
                    color: AppColors.white,
                    width: 1,
                  ),
                ),
                child: const Icon(
                  CupertinoIcons.bell,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight(context) * 0.025,
          ),
          Text(
            'Home',
            style: TextStyle(
              fontSize: screenWidth(context) / 12,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
          Text(
            'How do you feel today?',
            style: TextStyle(
              fontSize: screenWidth(context) / 17,
              fontWeight: FontWeight.bold,
              color: AppColors.crayola,
            ),
          ),
          Row(
            children: [
              Icon(
                CupertinoIcons.location_solid,
                color: AppColors.white,
                size: screenWidth(context)/22,
              ),
              SizedBox(width: screenWidth(context)*0.01,),
              Text(
                currentIndex == 0
                    ? '54, El Batal Ahmed Abdel Aziz St., Qism Dokki, Giza'
                    : 'Dubai Healthcare City Phase 2 - Al Jaddaf - Dubai',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: screenWidth(context)/35,
                )
                ),

            ],
          ),
        ],
      ),
    );
  }
}
