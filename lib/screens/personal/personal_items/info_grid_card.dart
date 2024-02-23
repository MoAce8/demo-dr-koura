import 'package:dr_koura/models/info_model.dart';
import 'package:dr_koura/shared/constants.dart';
import 'package:flutter/material.dart';

class InfoGridCard extends StatelessWidget {
  const InfoGridCard({Key? key, required this.model}) : super(key: key);

  final InfoModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.crayola.withOpacity(0.2),
        borderRadius: BorderRadius.circular(21),

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(model.pic),
          SizedBox(height: screenHeight(context)*0.01,),
          Text(
            model.name,
            softWrap: true,
            style: Theme.of(context).textTheme.bodySmall,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
