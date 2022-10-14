import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'vacancyUpdateForm.dart';
import 'vacancyIndicator.dart';
import 'roomDescription.dart';
import 'page.dart' as pg;

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
    pg.page = page;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
          child: Card(
            elevation: 5,
            child: VacancyIndicator(roomDetails),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: Card(
            elevation: 5,
            child: RoomDescription(timeUpdated: roomDetails[2]),
          ),
        ),
        Divider(
          indent: 12,
          endIndent: 12,
          thickness: 3,
          color: Color.fromARGB(255, 73, 105, 109),
        ),
        VacancyUpdateForm(),
        Divider(
          indent: 12,
          endIndent: 12,
          thickness: 3,
          color: Color.fromARGB(255, 73, 105, 109),
        ),
      ],
    );
  }
}
