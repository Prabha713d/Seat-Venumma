import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class RoomFeatures extends StatelessWidget {
  @override
  final List features;

  RoomFeatures({
    required this.features,
  });

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(1),
      alignment: Alignment.topCenter,
      child: Row(
        children: [
          ...(features).map((ft) {
            return Padding(
              padding: EdgeInsets.fromLTRB(1, 10, 1, 10),
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Color.fromARGB(255, 140, 179, 184),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    ft,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0,
                      fontFamily: 'Galliard BT',
                    ),
                  ),
                ),
              ),
            );
          }).toList()
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
