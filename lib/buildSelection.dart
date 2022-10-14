import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:testapp/vacancyTrack.dart';

import './buttons.dart';

//this code generates the layout of the buttons - currently set to grid view.

class BuildSelection extends StatelessWidget {
  //final String page;
  final Function buttonClicked;
  final List buildList;

  BuildSelection({
    //required this.page,
    required this.buttonClicked,
    required this.buildList,
  });

  @override
  Widget build(BuildContext context) {
    return (buildList.length > 0)
        ? GridView.count(
            primary: false,
            padding: const EdgeInsets.all(5),
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            crossAxisCount: 3,
            children: [
              //Locations(
              //page,
              //),
              //generating the list of buttons, then calling Buttons to create them, while passing building/room name - reusing code for both
              ...(buildList).map((bldg) {
                return Buttons(buttonClicked, bldg);
              }).toList()
            ],
          )
        : VacancyTrack(buttonClicked: buttonClicked, buildList: buildList);
  }
}
