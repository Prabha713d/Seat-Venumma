import 'package:flutter/material.dart';

//Display about whether the room is currently booked. It is reading this information directly from the "database" without any logic

class RoomBooking extends StatelessWidget {
  final Function reload;
  final String status;

  RoomBooking(this.reload, this.status);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: Text(
        ("Currently Booked by : " + status),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Galliard BT',
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
    );
  }
}
