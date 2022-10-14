import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class RoomDescription extends StatelessWidget {
  @override
  final String timeUpdated;

  RoomDescription({
    required this.timeUpdated,
  });

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      alignment: Alignment.topCenter,
      child: Text(
        ("Last Update at " + timeUpdated),
        textAlign: TextAlign.start,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15.0,
          fontFamily: 'Galliard BT',
        ),
      ),
    );
  }
}
