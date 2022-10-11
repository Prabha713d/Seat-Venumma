import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

import './buttons.dart';
import "./buildingDetails.dart";
import './location.dart';

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
    BuildingDetails obj = BuildingDetails();
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      children: [
        //Locations(
        //page,
        //),
        ...(buildList).map((bldg) {
          return Buttons(buttonClicked, bldg);
        }).toList()
      ],
    );
  }
}
