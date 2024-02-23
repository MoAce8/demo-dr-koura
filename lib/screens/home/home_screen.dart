import 'package:dr_koura/models/disease_model.dart';
import 'package:dr_koura/models/intervention_model.dart';
import 'package:dr_koura/screens/diagnose/diagnose_tell_us.dart';
import 'package:dr_koura/screens/home/body_items/ads_slider.dart';
import 'package:dr_koura/screens/home/body_items/contact_us_sheet.dart';
import 'package:dr_koura/screens/home/body_items/disease_card.dart';
import 'package:dr_koura/screens/home/body_items/exercise_card.dart';
import 'package:dr_koura/screens/home/body_items/intervention_card.dart';
import 'package:dr_koura/screens/home/body_items/news_card.dart';
import 'package:dr_koura/screens/home/body_items/testimonials_card.dart';
import 'package:dr_koura/screens/home/home_comb/home_info.dart';
import 'package:dr_koura/screens/home/home_comb/home_pic.dart';
import 'package:dr_koura/shared/constants.dart';
import 'package:flutter/material.dart';

import '../../models/exercise_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List countries = ['Egypt', 'UAE'];

  List diseases = [
    DiseaseModel(pic: 'assets/images/knee.png', name: 'Knee osteoarthritis'),
    DiseaseModel(pic: 'assets/images/hern disc.png', name: 'Herniated disc'),
    DiseaseModel(pic: 'assets/images/head.png', name: 'Tension headache'),
    DiseaseModel(pic: 'assets/images/disc.png', name: 'Disc'),
    DiseaseModel(pic: 'assets/images/cluster.png', name: 'Cluster headache'),
  ];

  List interventions = [
    InterventionModel(title: 'Headache Pain'),
    InterventionModel(title: 'Neck Pain'),
    InterventionModel(title: 'Headache Pain'),
    InterventionModel(title: 'Neck Pain'),
    InterventionModel(title: 'Headache Pain'),
    InterventionModel(title: 'Neck Pain'),
  ];

  List exercises = [
    ExerciseModel(title: 'Knee Exercises', pic: 'assets/images/knee ex.png'),
    ExerciseModel(title: 'Chest Exercises', pic: 'assets/images/chest ex.png'),
    ExerciseModel(title: 'Knee Exercises', pic: 'assets/images/knee ex.png'),
    ExerciseModel(title: 'Chest Exercises', pic: 'assets/images/chest ex.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          const HomePic(),
          HomeInfo(currentIndex: currentIndex),
          Container(
            margin: EdgeInsets.only(top: screenHeight(context) * 0.325),
            width: double.infinity,
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth(context) * 0.06,
                vertical: screenHeight(context) * 0.02),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(28),
                    topLeft: Radius.circular(28)),
                color: AppColors.white),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 6,
                        )
                      ],
                      borderRadius: BorderRadius.circular(33),
                      color: AppColors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          2,
                          (index) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentIndex = index;
                                  });
                                },
                                child: Container(
                                  width: screenWidth(context) / 2.28,
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(33),
                                    color: (currentIndex == index && index == 0)
                                        ? AppColors.primaryPurple
                                        : (currentIndex == index && index == 1)
                                            ? AppColors.crayola
                                            : Colors.transparent,
                                  ),
                                  child: Center(
                                    child: Text(
                                      countries[index],
                                      style: TextStyle(
                                          fontSize: screenWidth(context) / 22,
                                          color: currentIndex == index
                                              ? AppColors.white
                                              : AppColors.primaryPurple),
                                    ),
                                  ),
                                ),
                              )),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.03,
                  ),
                  Text(
                    'Diseases we treat',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  DiseaseList(diseases: diseases),
                  SizedBox(
                    height: screenHeight(context) * 0.03,
                  ),
                  Row(
                    children: [
                      Text(
                        'Our Interventions:',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const Spacer(),
                      GestureDetector(
                        child: Text(
                          'See more...',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Our services center around treatment for each disease or pain specific to each region',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColors.textGrey,
                        ),
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.03,
                  ),
                  InterventionCardList(interventions: interventions),
                  SizedBox(
                    height: screenHeight(context) * 0.05,
                  ),
                  Row(
                    children: [
                      Text(
                        'Our News',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const Spacer(),
                      GestureDetector(
                        child: Text(
                          'See more...',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Our services center around treatment for each disease or pain specific to each region',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColors.textGrey,
                        ),
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.03,
                  ),
                  const NewsCard(),
                  SizedBox(
                    height: screenHeight(context) * 0.05,
                  ),
                  Row(
                    children: [
                      Text(
                        'Exercise',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const Spacer(),
                      GestureDetector(
                        child: Text(
                          'See more...',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Our services center around treatment for each disease or pain specific to each region',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColors.textGrey,
                        ),
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.03,
                  ),
                  ExerciseCardList(exercises: exercises),
                  SizedBox(
                    height: screenHeight(context) * 0.05,
                  ),
                  Row(
                    children: [
                      Text(
                        'Testimonials',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const Spacer(),
                      GestureDetector(
                        child: Text(
                          'See more...',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Our services center around treatment for each disease or pain specific to each region',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColors.textGrey,
                        ),
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.03,
                  ),
                  const TestimonialsCard(),
                  SizedBox(
                    height: screenHeight(context) * 0.05,
                  ),
                  Row(
                    children: [
                      Text(
                        'Diagnose Yourself',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const Spacer(),
                      GestureDetector(
                        child: Text(
                          'See more...',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Our services center around treatment for each disease or pain specific to each region',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColors.textGrey,
                        ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (ctx) => const TellUsScreen()));
                    },
                    child: Image.asset('assets/images/diag.png'),
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.05,
                  ),
                  Row(
                    children: [
                      Text(
                        'Our Medical Contracts',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const Spacer(),
                      GestureDetector(
                        child: Text(
                          'See more...',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Our services center around treatment for each disease or pain specific to each region',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColors.textGrey,
                        ),
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.03,
                  ),
                  AdsSlider(currentIndex: currentIndex),
                  SizedBox(
                    height: screenHeight(context) * 0.05,
                  ),
                  ContactUsSheet(currentIndex: currentIndex),
                  SizedBox(
                    height: screenHeight(context) * 0.08,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
