import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class Block extends StatefulWidget {
  final void Function(String?) onBlockSelected; // Callback function
  Block({Key? key, required this.onBlockSelected}) : super(key: key);
  //const Block({Key? key}) : super(key: key);

  @override
  BlockState createState() => BlockState();
}

class BlockState extends State<Block> {
  String? _selectedItem;
  List<String> Blocks = [' New Block', ' Main Block'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 20.0),
      child: SearchField(
        hint: 'Choose Block',
        searchInputDecoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
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
          widget.onBlockSelected(_selectedItem);
          print(value);
          return null;
        },
        suggestions: Blocks.map(
            (value) => SearchFieldListItem(value, child: Text(value))).toList(),
      ),
    );
  }
}
