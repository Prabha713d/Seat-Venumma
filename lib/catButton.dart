import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

//generates the categories icon at the top (menu)

class CatButton extends StatelessWidget {
  @override
  final Function buttonClicked;

  CatButton({
    required this.buttonClicked,
  });

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: IconButton(
        iconSize: 25,
        icon: Icon(
          Icons.menu,
          color: Color.fromARGB(255, 239, 241, 241),
        ),
        onPressed: () => buttonClicked('Category Page'),
      ),
    );
  }
}
