import 'package:flutter/material.dart';

//Button design

class Buttons extends StatelessWidget {
  //selectHandler is what is run when the button is pressed, which links all the way to the home page.
  final Function selectHandler;
  final String buildingName;

  Buttons(this.selectHandler, this.buildingName);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 12, 139, 153)),
          foregroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 244, 246, 247)),
        ),
        onPressed: () => selectHandler(buildingName),
        child: Text(
          buildingName,
          style: TextStyle(
            fontFamily: 'Anton',
          ),
        ),
      ),
    );
  }
}
