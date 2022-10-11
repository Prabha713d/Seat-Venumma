import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class CatButton extends StatelessWidget {
  @override
  final Function buttonClicked;

  CatButton({
    required this.buttonClicked,
  });

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 6, 68, 75)),
          foregroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 239, 241, 241)),
        ),
        child: Text("Categories"),
        onPressed: () => buttonClicked('Category Page'),
      ),
    );
  }
}
