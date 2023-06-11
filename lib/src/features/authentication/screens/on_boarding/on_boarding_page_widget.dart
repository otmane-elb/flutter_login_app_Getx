
import 'package:flutter/material.dart';

import '../../models/on_boarding_screens_model.dart';

class OnBoardingWdiget extends StatelessWidget {
  const OnBoardingWdiget({
    super.key,
    required this.model,
  });
  final OnBoardingModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: model.bgcolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(model.image),
          Text(
            model.title,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          Text(
            model.counter,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
