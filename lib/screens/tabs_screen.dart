import 'package:dr_koura/screens/home/home_screen.dart';
import 'package:dr_koura/screens/personal/personal_screen.dart';
import 'package:dr_koura/shared/constants.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  TabsScreen({Key? key, this.outerPage}) : super(key: key);

  Widget? outerPage;

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int activeScreen = 1;

  List navScreens = [
    PersonalScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  void selectScreen(int id) {
    setState(() {
      activeScreen = id;
      widget.outerPage=null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.outerPage ?? navScreens[activeScreen],
      extendBody: true,
      bottomNavigationBar: Container(
        width: double.infinity,
        clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.only(
          bottom: screenHeight(context)*0.0128,
          right: screenWidth(context)*0.055,
          left: screenWidth(context)*0.055,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: AppColors.primaryPurple
        ),
        child: BottomNavigationBar(
          onTap: selectScreen,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: activeScreen,
          backgroundColor: AppColors.primaryPurple,
          items: [
            BottomNavigationBarItem(
              label: 'profile',
              backgroundColor: AppColors.primaryPurple,
              icon: activeScreen == 0
                  ? Stack(
                  alignment: Alignment.center,
                  children: [
                      Image.asset('assets/images/circle.png',height: 30,),
                      Image.asset(
                        'assets/images/p profile.png',height: 22,
                      )
                    ])
                  : Image.asset(
                      'assets/images/w profile.png',height: 22,
                    ),
            ),
            BottomNavigationBarItem(
              label: 'home',
              backgroundColor: AppColors.primaryPurple,
              icon: activeScreen == 1
                  ? Stack(alignment: Alignment.center,
                  children: [
                      Image.asset('assets/images/circle.png',height: 30),
                      Image.asset(
                        'assets/images/p home.png',height: 22
                      )
                    ])
                  : Image.asset(
                      'assets/images/w home.png',height: 22
                    ),
            ),
            BottomNavigationBarItem(
              label: 'calendar',
              backgroundColor: AppColors.primaryPurple,
              icon: activeScreen == 2
                  ? Stack(alignment: Alignment.center,
                  children: [
                      Image.asset('assets/images/circle.png',height: 30),
                      Image.asset(
                        'assets/images/p calendar.png',height: 22,
                      )
                    ])
                  : Image.asset(
                      'assets/images/w calendar.png',height: 22
                    ),
            ),
            BottomNavigationBarItem(
              label: 'settings',
              backgroundColor: AppColors.primaryPurple,
              icon: activeScreen == 3
                  ? Stack(alignment: Alignment.center,
                  children: [
                      Image.asset('assets/images/circle.png',height: 30),
                      Image.asset(
                        'assets/images/p settings.png',height: 22,
                      )
                    ])
                  : Image.asset(
                      'assets/images/w settings.png',height: 22
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
