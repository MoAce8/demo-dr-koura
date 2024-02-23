import 'package:dr_koura/screens/diagnose/where_body.dart';
import 'package:dr_koura/screens/tabs_screen.dart';
import 'package:dr_koura/shared/constants.dart';
import 'package:flutter/material.dart';

class TellUsScreen extends StatelessWidget {
  const TellUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        color: AppColors.primaryPurple,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Tell Us',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: AppColors.white,
                          fontSize: screenWidth(context) / 10,
                        ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => TabsScreen()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(
                          width: 1,
                          color: AppColors.white,
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/w home.png',
                        height: screenHeight(context) * 0.03,
                      ),
                    ),
                  )
                ],
              ),
              Text(
                'Where Do You Feel Pain ?',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: AppColors.white,
                    ),
              ),
              SizedBox(
                height: screenHeight(context) * 0.01,
              ),
              Text(
                'Improve your strength and endurance. Choose a muscle group you want to target.',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: AppColors.white),
              ),
              Expanded(
                child: Image.asset(
                  'assets/images/body.png',
                  alignment: Alignment.bottomRight,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (ctx) => TabsScreen(
                        outerPage: BodyPartsScreen(),
                      )));
        },
        backgroundColor: AppColors.white,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(60),
        ),
        child: const Icon(
          Icons.arrow_forward_ios,
          color: AppColors.primaryPurple,
          size: 50,
        ),
      ),
    );
  }
}
