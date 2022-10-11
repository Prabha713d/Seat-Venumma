import 'package:flutter/material.dart';

import './buildSelection.dart';
import './catButton.dart';
import './homeButton.dart';
import './buildingDetailsStore.dart';

BuildingDetailsStore obj = BuildingDetailsStore();

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var displayText = 'Welcome to Seat Venumma!';
  var _page = 'Seat Venumma';

  void _buttonClicked(String setPage) {
    setState(() {
      _page = setPage;
    });
  }

  List pageLocator(var page) {
    List returnables = [];
    if (page == 'Seat Venumma') {
      returnables = obj.buildings;
    } else if (page == 'Category Page') {
      returnables = obj.categories;
    } else if (obj.inList(obj.categories, page)) {
      returnables = obj.byCat[page];
    } else if (obj.indexFinder(page) >= 0) {
      returnables = obj.details[obj.indexFinder(page)]['Rooms'] as List;
    }

    return returnables;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            HomeButton(
              buttonClicked: _buttonClicked,
            ),
            CatButton(
              buttonClicked: _buttonClicked,
            ),
          ],
          title: Text(
            _page,
          ),
        ),
        body: BuildSelection(
          buttonClicked: _buttonClicked,
          //page: _page,
          buildList: pageLocator(_page),
        ),
      ),
    );
  }
}
