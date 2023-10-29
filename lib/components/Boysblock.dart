import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class B_Block extends StatefulWidget {
  final void Function(String?) onBlockSelected; // Callback function
  B_Block({Key? key, required this.onBlockSelected}) : super(key: key);

  //Block({Key? key}) : super(key: key);
  //final blocknocontroller = TextEditingController();

  @override
  B_BlockState createState() => B_BlockState();
}

class B_BlockState extends State<B_Block> {
  String? _selectedItem;
  List<String> Blocks = [' Block A', ' Block B', ' Block E'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 20.0),
      child: Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  child: SearchField(
                    hint: 'Choose Block',
                    searchInputDecoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
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
                      widget.onBlockSelected(_selectedItem);
                      print(value);
                      return null;
                    },
                    suggestions: Blocks.map((value) =>
                            SearchFieldListItem(value, child: Text(value)))
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
