import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'vacancyIndicator.dart';
import 'roomDescription.dart';

class VacancyTrack extends StatelessWidget {
  //final String page;
  final Function buttonClicked;
  final List buildList;

  VacancyTrack({
    //required this.page,
    required this.buttonClicked,
    required this.buildList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 5,
          child: VacancyIndicator(0.4),
        ),
        Card(
          elevation: 5,
          child: RoomDescription(timeUpdated: "1251 hrs"),
        ),
      ],
    );
  }
}
