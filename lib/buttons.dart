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
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 12, 139, 153),
          foregroundColor: Color.fromARGB(255, 244, 246, 247),
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          side: BorderSide(
            color: Color.fromARGB(255, 4, 60, 66),
            width: 1,
          ),
        ),
        onPressed: () => selectHandler(buildingName),
        child: Text(
          buildingName,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Antonio',
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
