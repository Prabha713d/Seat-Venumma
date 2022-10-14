import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class RoomDescription extends StatelessWidget {
  @override
  final DateTime timeUpdated;

  RoomDescription({
    required this.timeUpdated,
  });

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      alignment: Alignment.topCenter,
      child: Text(
        ("Last Update at " +
            (timeUpdated.hour * 100 + timeUpdated.minute).toString() +
            "hrs"),
        textAlign: TextAlign.start,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20.0,
          fontFamily: 'Galliard BT',
        ),
      ),
    );
  }
}
