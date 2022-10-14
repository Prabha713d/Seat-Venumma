import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'vacancyIndicator.dart';
import 'roomDescription.dart';

class VacancyTrack extends StatelessWidget {
  //final String page;
  final List roomDetails;
  final String page;

  VacancyTrack({
    //required this.page,
    required this.roomDetails,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 5,
          child: VacancyIndicator(roomDetails),
        ),
        Card(
          elevation: 5,
          child: RoomDescription(timeUpdated: roomDetails[2]),
        ),
      ],
    );
  }
}
