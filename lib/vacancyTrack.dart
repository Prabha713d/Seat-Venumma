import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:testapp/roomFeatures.dart';

import 'vacancyUpdateForm.dart';
import 'vacancyIndicator.dart';
import 'roomDescription.dart';
import 'roomBooking.dart';
import 'page.dart' as pg;

//page construction of the vacancy display, i.e the detailed page of every room.

class VacancyTrack extends StatefulWidget {
  //final String page;
  final List roomDetails;
  final String page;

  VacancyTrack({
    //required this.page,
    required this.roomDetails,
    required this.page,
  });

  @override
  State<VacancyTrack> createState() => _VacancyTrackState();
}

class _VacancyTrackState extends State<VacancyTrack> {
  void reload() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    pg.page = widget.page;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
          child: Card(
            elevation: 5,
            //displays vacancy on the linear indicator
            child: VacancyIndicator(widget.roomDetails),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: Card(
            elevation: 5,
            //displays the room description, i.e last updated
            child: RoomDescription(timeUpdated: widget.roomDetails[2]),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: Card(
            elevation: 5,
            //features in the room
            child: RoomFeatures(features: widget.roomDetails[3]),
          ),
        ),
        (widget.roomDetails[
                4]) //shows the booking condition iff the room is bookable
            ? Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Card(
                  elevation: 5,
                  child: RoomBooking(reload, widget.roomDetails[5]),
                ),
              )
            : Divider(
                indent: 12,
                endIndent: 12,
                thickness: 3,
                color: Color.fromARGB(255, 73, 105, 109),
              ),
        Divider(
          indent: 12,
          endIndent: 12,
          thickness: 3,
          color: Color.fromARGB(255, 73, 105, 109),
        ),
        //input box which allows vacancy to be updated.
        VacancyUpdateForm(reload: reload),
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
