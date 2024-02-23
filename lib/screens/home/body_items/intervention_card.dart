import 'package:carousel_slider/carousel_slider.dart';
import 'package:dr_koura/models/intervention_model.dart';
import 'package:dr_koura/shared/constants.dart';
import 'package:flutter/material.dart';


class InterventionCardList extends StatelessWidget {
  const InterventionCardList({Key? key, required this.interventions}) : super(key: key);
  final List interventions;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: interventions
          .map((e) => Container(
          margin: const EdgeInsets.all(5),
          child: InterventionCard(model: e)))
          .toList(),
      options: CarouselOptions(
        height: screenHeight(context) * 0.32,
        disableCenter: true,
        viewportFraction: 0.5,
        enableInfiniteScroll: false,
        padEnds: false,
      ),
    );
  }
}

class InterventionCard extends StatelessWidget {
  const InterventionCard({Key? key, required this.model}) : super(key: key);

  final InterventionModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context)*0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 6,
                offset: const Offset(0, 3),

            )
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              // color: AppColors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            clipBehavior: Clip.hardEdge,
            child: Image.asset('assets/images/soda3.png',fit: BoxFit.cover,),
          ),
          Container(
            // color: AppColors.white,
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight(context) * 0.01,
                ),
                Text(
                  model.title,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: screenWidth(context) / 36),
                ),
                SizedBox(
                  height: screenHeight(context) * 0.01,
                ),
                Text('Without surgery',style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(
                    fontSize: screenWidth(context) / 36,
                  color: AppColors.textGrey
                )),
                SizedBox(
                  height: screenHeight(context) * 0.03,
                ),
                Text('See more...',style: Theme.of(context)
                    .textTheme
                    .bodySmall),
              ],
            ),
          )
        ],
      ),
    );
  }
}



