import 'package:carousel_slider/carousel_slider.dart';
import 'package:dr_koura/models/disease_model.dart';
import 'package:dr_koura/shared/constants.dart';
import 'package:flutter/material.dart';

class DiseaseList extends StatelessWidget {
  const DiseaseList({Key? key, required this.diseases}) : super(key: key);

  final List diseases;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: diseases
          .map(
            (e) => Container(
          margin: const EdgeInsets.all(5),
          child: DiseaseCard(model: e),
        ),
      )
          .toList(),
      options: CarouselOptions(
        height: screenHeight(context) * 0.15,
        disableCenter: true,
        viewportFraction: 0.38,
        enableInfiniteScroll: false,
        padEnds: false,
      ),
    );
  }
}

class DiseaseCard extends StatelessWidget {
  const DiseaseCard({Key? key, required this.model}) : super(key: key);

  final DiseaseModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: screenWidth(context)*0.25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.crayola.withOpacity(0.2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(model.pic),
          SizedBox(height: screenHeight(context)*0.01,),
          Text(
            model.name,
            softWrap: true,
            style: Theme.of(context).textTheme.bodySmall,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
