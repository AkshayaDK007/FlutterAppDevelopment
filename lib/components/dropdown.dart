import 'package:flutter/material.dart';
import 'package:my_app/pages/Boys_reg.dart';
import 'package:searchfield/searchfield.dart';

class AwesomeDropdownExample extends StatefulWidget {
  final List<String>? Departments;
  final controller = TextEditingController();
  AwesomeDropdownExample({Key? key, this.Departments}) : super(key: key);

  @override
  _AwesomeDropdownExampleState createState() => _AwesomeDropdownExampleState();
}

class _AwesomeDropdownExampleState extends State<AwesomeDropdownExample> {
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 25.0),
      child: Scaffold(
        body: Container(
          child: SearchField(
            hint: 'Choose Department',
            searchInputDecoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
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
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(10),
            ),
            onSearchTextChanged: (value) {
              setState(() {
                _selectedItem = value;
              });

              print(value);
              return null;
            },
            suggestions: widget.Departments!
                .map((value) => SearchFieldListItem(value, child: Text(value)))
                .toList(),
          ),
        ),
      ),
    );
  }
}
