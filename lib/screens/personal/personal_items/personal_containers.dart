import 'package:dr_koura/shared/constants.dart';
import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({Key? key, required this.pic, required this.title, this.subtitle}) : super(key: key);

  final String pic;
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(
          bottom: 2
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(12),
            topLeft: Radius.circular(12)
          ),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset('assets/images/$pic.png'),
            SizedBox(width: screenWidth(context)*0.05,),
            Text(title,style: Theme.of(context).textTheme.titleMedium,),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}


class MiddleContainer extends StatelessWidget {
  const MiddleContainer({Key? key, required this.pic, required this.title, this.subtitle}) : super(key: key);

  final String pic;
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(
            bottom: 2
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset('assets/images/$pic.png'),
            SizedBox(width: screenWidth(context)*0.05,),
            Text(title,style: Theme.of(context).textTheme.titleMedium,),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}


class BottomContainer extends StatelessWidget {
  const BottomContainer({Key? key, required this.pic, required this.title, this.subtitle}) : super(key: key);

  final String pic;
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(12),
              bottomLeft: Radius.circular(12)
          ),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset('assets/images/$pic.png'),
            SizedBox(width: screenWidth(context)*0.05,),
            subtitle== null?
            Text(title,style: Theme.of(context).textTheme.titleMedium,):
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: Theme.of(context).textTheme.titleMedium,),
                Text(subtitle!,style: TextStyle(
                  color: AppColors.textGrey,
                  fontSize: screenWidth(context)/38,
                ),)
              ],
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}


class SoloContainer extends StatelessWidget {
  const SoloContainer({Key? key, required this.pic, required this.title, this.subtitle}) : super(key: key);

  final String pic;
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset('assets/images/$pic.png'),
            SizedBox(width: screenWidth(context)*0.05,),
            Text(title,style: Theme.of(context).textTheme.titleMedium,),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
