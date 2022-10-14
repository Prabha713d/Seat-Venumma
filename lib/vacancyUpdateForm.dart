import 'package:flutter/material.dart';
import 'package:testapp/buildSelection.dart';
import 'package:testapp/buildingDetailsStore.dart';
import 'package:testapp/reloadVacancy.dart';

import 'page.dart' as pg;

// Define a custom Form widget.
class VacancyUpdateForm extends StatefulWidget {
  const VacancyUpdateForm({super.key});

  @override
  VUFState createState() {
    return VUFState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class VUFState extends State<VacancyUpdateForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _newVacancy = TextEditingController();

  void vacancyUpdated(String newVacancy) {
    setState(() {
      BuildingDetailsStore obj = new BuildingDetailsStore();
      obj.vacancyUpdate(pg.page, int.parse(newVacancy));
    });
  }

  void reload() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
            child: TextFormField(
              cursorHeight: 20,
              controller: _newVacancy,
              keyboardType: TextInputType.number,
              scrollPadding: EdgeInsets.all(10),
              textAlign: TextAlign.center,
              onFieldSubmitted: (value) => vacancyUpdated(value),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
                fontFamily: 'Galliard BT',
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Update Vacancy',
              ),
            ),
          ),
          ReloadVacancy(reload: reload),
        ],
      ),
    );
  }
}
