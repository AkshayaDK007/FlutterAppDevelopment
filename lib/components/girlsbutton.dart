import 'package:flutter/material.dart';

class Girlsbutton extends StatelessWidget {
  const Girlsbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey,
            ),
            height: 150,
            width: 200,
          ),
        ),
      ),
    );
  }
}
