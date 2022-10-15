import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

//generates the home button on the AppBar. Would be nice to incorporate the Seat Venumma logo as well (the icon is stored here, I wasn't able to figure out how to include it)

class HomeButton extends StatelessWidget {
  @override
  final Function buttonClicked;

  HomeButton({
    required this.buttonClicked,
  });

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: IconButton(
        iconSize: 25,
        icon: Icon(
          Icons.home,
          color: Color.fromARGB(255, 239, 241, 241),
        ),
        onPressed: () => buttonClicked('Seat Venumma'),
      ),
    );
  }
}
