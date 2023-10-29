import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:lottie/lottie.dart';

class Query extends StatefulWidget {
  const Query({super.key});

  @override
  State<Query> createState() => _QueryState();
}

class _QueryState extends State<Query> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CarouselSlider(children: [
      Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(25.0)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            "lib/images/query.jpg",
          ),
        ),
      ),
      ListView(children: [
        Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
                child: Lottie.asset(
                    "assets/lib/animations/animation_lo7i6czd.json"))),
      ]),
      ListView(children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(),
        ),
      ]),
    ]));
  }
}
