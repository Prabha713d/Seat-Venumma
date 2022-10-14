import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class VacancyIndicator extends StatelessWidget {
  @override
  final double percentFilled;

  VacancyIndicator(this.percentFilled);

  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: double.infinity,
        height: 50,
        margin: EdgeInsets.all(30),
        child: LinearPercentIndicator(
          percent: percentFilled,
          lineHeight: 30,
          animation: true,
          animationDuration: 250,
          linearStrokeCap: LinearStrokeCap.roundAll,
          progressColor: Color.fromARGB(255, 4, 71, 79),
        ),
      ),
      Container(
        padding: EdgeInsets.fromLTRB(25, 0, 25, 25),
        child: Text(
          "40/100",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              fontFamily: 'Galliard BT'),
        ),
      ),
    ]);
  }
}
