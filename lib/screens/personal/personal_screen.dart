import 'package:dr_koura/models/info_model.dart';
import 'package:dr_koura/screens/personal/personal_items/info_grid_card.dart';
import 'package:dr_koura/screens/personal/personal_items/personal_containers.dart';
import 'package:dr_koura/shared/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalScreen extends StatelessWidget {
  PersonalScreen({Key? key}) : super(key: key);

  List info = [
    InfoModel(pic: 'assets/images/coins.png', name: 'My points'),
    InfoModel(pic: 'assets/images/skeleton.png', name: 'X-Rays Records'),
    InfoModel(pic: 'assets/images/doctor icon.png', name: 'My Doctor'),
    InfoModel(pic: 'assets/images/report.png', name: 'Medical Records'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: screenHeight(context) * 0.32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.transparent,
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/personal background.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenHeight(context) * 0.32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        AppColors.white.withOpacity(0.5),
                        AppColors.white,
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(
                    top: 50,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: screenWidth(context) * 0.11,
                        height: screenWidth(context) * 0.11,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: const Icon(CupertinoIcons.search),
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/big doctor.png',
                          ),
                          SizedBox(
                            height: screenHeight(context) * 0.03,
                          ),
                          Text(
                            'Ahmed Ali',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            'insurance number : 4654784135478',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontSize: screenWidth(context) / 40),
                          )
                        ],
                      ),
                      Container(
                        width: screenWidth(context) * 0.11,
                        height: screenWidth(context) * 0.11,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Image.asset('assets/images/p settings.png'),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: screenHeight(context) * 0.025,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.primaryPurple,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Age',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: screenWidth(context) / 36),
                      ),
                      SizedBox(
                        width: screenWidth(context) * 0.05,
                      ),
                      Text(
                        '32 Years',
                        style: TextStyle(
                            color: AppColors.crayola,
                            fontSize: screenWidth(context) / 36),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.primaryPurple,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Height',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: screenWidth(context) / 36),
                      ),
                      SizedBox(
                        width: screenWidth(context) * 0.05,
                      ),
                      Text(
                        '178 cm',
                        style: TextStyle(
                            color: AppColors.crayola,
                            fontSize: screenWidth(context) / 36),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.primaryPurple,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Weight',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: screenWidth(context) / 36),
                      ),
                      SizedBox(
                        width: screenWidth(context) * 0.05,
                      ),
                      Text(
                        '73.5 kg',
                        style: TextStyle(
                            color: AppColors.crayola,
                            fontSize: screenWidth(context) / 36),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: screenHeight(context) * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Information',
                    style: TextStyle(
                        fontSize: screenWidth(context) / 18,
                        color: AppColors.primaryPurple),
                  ),
                  Container(
                    height: screenHeight(context) * 0.4,
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth(context) * 0.05),
                    child: GridView(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 6 / 5,
                        crossAxisSpacing: screenWidth(context) * 0.03,
                        mainAxisSpacing: screenHeight(context) * 0.02,
                      ),
                      children: [
                        for (final m in info) InfoGridCard(model: m),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.015,
                  ),
                  Text(
                    'Settings',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.03,
                  ),
                  const TopContainer(
                      pic: 'profile settings', title: 'Profile Settings'),
                  const MiddleContainer(
                      pic: 'appoint', title: 'My Appointments'),
                  const MiddleContainer(pic: 'remind', title: 'Reminders'),
                  const BottomContainer(pic: 'help', title: 'Help Center'),
                  SizedBox(height: screenHeight(context) * 0.05),
                  Text(
                    'Instructions',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.03,
                  ),
                  const SoloContainer(pic: 'list', title: 'Exercise List'),
                  SizedBox(height: screenHeight(context) * 0.05),
                  Text(
                    'We Love Feedback',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.03,
                  ),
                  const TopContainer(pic: 'black star', title: 'Rate the app'),
                  const BottomContainer(
                    pic: 'feedback',
                    title: 'Send Feedback',
                    subtitle: 'What can we improve?',
                  ),
                  SizedBox(height: screenHeight(context) * 0.05),
                  Text(
                    'Follow Us',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.03,
                  ),
                  const TopContainer(pic: 'facebook', title: 'Facebook'),
                  const MiddleContainer(pic: 'instagram', title: 'Instagram'),
                  const MiddleContainer(pic: 'twitter', title: 'Twitter'),
                  const MiddleContainer(pic: 'in', title: 'LinkedIn'),
                  const MiddleContainer(pic: 'snap', title: 'Snapchat'),
                  const MiddleContainer(pic: 'tiktok', title: 'Tiktok'),
                  const BottomContainer(pic: 'youtube', title: 'Youtube'),
                  SizedBox(height: screenHeight(context) * 0.05),
                  const SoloContainer(pic: 'logout icon', title: 'Log Out'),
                  SizedBox(height: screenHeight(context) * 0.05),
                  Column(
                    children: [
                      Text(
                        'Made With ♥ in Egypt',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      Text(
                        'To make the world a healthier place with no pains',
                        style: Theme.of(context).textTheme.titleMedium,
                        textAlign: TextAlign.center,
                      ),
                      Text('Terms of Service, Privacy Policy,',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    decoration: TextDecoration.underline,
                                  )),
                      SizedBox(
                        height: screenHeight(context) * 0.01,
                      ),
                      Text('Version 1.49.3 (4509)',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    decoration: TextDecoration.underline,
                                  )),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: screenHeight(context) * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
