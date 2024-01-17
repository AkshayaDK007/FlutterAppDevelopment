import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class Departmentbutton extends StatefulWidget {
  final void Function(String?) onDepartmentSelected; // Callback function

  const Departmentbutton({Key? key, required this.onDepartmentSelected})
      : super(key: key);

  @override
  DepartmentbuttonState createState() => DepartmentbuttonState();
}

class DepartmentbuttonState extends State<Departmentbutton> {
  String? _selectedItem;
  List<String> Departments = [
    ' Cse',
    ' IT',
    ' ECE',
    ' EEE',
    ' MECH',
    ' Mechatronics',
    ' Civil'
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 20.0),
      child: SearchField(
        hint: 'Choose Department',
        searchInputDecoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              // borderRadius:
              //    BorderRadius.all(Radius.circular(15)
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple),
                borderRadius: BorderRadius.circular(15)),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[500])),
        maxSuggestionsInViewPort: 6,
        itemHeight: 50,
        suggestionsDecoration: SuggestionDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        onSearchTextChanged: (value) {
          setState(() {
            _selectedItem = value;
          });
          widget.onDepartmentSelected(_selectedItem);
          print(value);
          return null;
        },
        suggestions: Departments.map(
            (value) => SearchFieldListItem(value, child: Text(value))).toList(),
      ),
    );
  }
}
