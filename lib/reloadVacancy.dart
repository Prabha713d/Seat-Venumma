import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:testapp/vacancyTrack.dart';

import 'buildingDetailsStore.dart';

//redundant code. used to generate a refresh button before i figured out the actual fit. Leaving the file here in case we need a button in the future.

class ReloadVacancy extends StatelessWidget {
  @override
  final Function reload;

  ReloadVacancy({
    required this.reload,
  });

  void updateData() {}

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(0),
      child: IconButton(
        iconSize: 40,
        color: Color.fromARGB(255, 72, 112, 112),
        splashColor: Color.fromARGB(255, 94, 135, 135),
        splashRadius: 20,
        icon: Icon(
          Icons.replay_circle_filled_rounded,
          color: Color.fromARGB(255, 3, 69, 69),
        ),
        onPressed: () => reload(),
      ),
    );
  }
}
