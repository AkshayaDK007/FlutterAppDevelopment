import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:pie_chart/pie_chart.dart';

class Adminmeal extends StatefulWidget {
  const Adminmeal({super.key});

  @override
  State<Adminmeal> createState() => AdminmealState();
}

class AdminmealState extends State<Adminmeal> {
  String Breakfast = '';
  String Lunch = '';
  String Dinner = '';
  String fav = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CarouselSlider(children: [
      ListView(children: [
        Container(
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.all(
                15.0), // Add margin for space around the container
            decoration: BoxDecoration(
              color: Colors.white, // Set the background color
              borderRadius: BorderRadius.circular(15.0), // Add rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Set shadow color
                  spreadRadius: 5, // Set spread radius
                  blurRadius: 7, // Set blur radius
                  offset: Offset(0, 3), // Set offset
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "How is Breakfast today?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            )),
        SizedBox(height: 25),
        Container(height: 400, width: double.infinity, child: chart()),
      ]),
      ListView(children: [
        Container(
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.all(
                15.0), // Add margin for space around the container
            decoration: BoxDecoration(
              color: Colors.white, // Set the background color
              borderRadius: BorderRadius.circular(15.0), // Add rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Set shadow color
                  spreadRadius: 5, // Set spread radius
                  blurRadius: 7, // Set blur radius
                  offset: Offset(0, 3), // Set offset
                ),
              ],
            ),
            child: Column(children: [
              Text(
                "How is Lunch today?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ])),
        SizedBox(height: 25),
        Container(height: 400, width: double.infinity, child: chart()),
      ]),
      ListView(children: [
        Container(
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.all(
                15.0), // Add margin for space around the container
            decoration: BoxDecoration(
              color: Colors.white, // Set the background color
              borderRadius: BorderRadius.circular(15.0), // Add rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Set shadow color
                  spreadRadius: 5, // Set spread radius
                  blurRadius: 7, // Set blur radius
                  offset: Offset(0, 3), // Set offset
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "How is Dinner today?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            )),
        SizedBox(height: 25),
        Container(height: 400, width: double.infinity, child: chart()),
      ]),
      ListView(children: [
        Container(
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.all(
                15.0), // Add margin for space around the container
            decoration: BoxDecoration(
              color: Colors.white, // Set the background color
              borderRadius: BorderRadius.circular(15.0), // Add rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Set shadow color
                  spreadRadius: 5, // Set spread radius
                  blurRadius: 7, // Set blur radius
                  offset: Offset(0, 3), // Set offset
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "What is ur Favorite meal of the day?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            )),
        SizedBox(height: 25),
        Container(height: 400, width: double.infinity, child: fav_chart()),
      ]),
    ]));
  }
}

class chart extends StatelessWidget {
  Map<String, double> dataMap = {
    "very good": 2,
    "good": 3,
    "normal": 5,
    "poor": 9,
    "very poor": 7,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: PieChart(
          dataMap: dataMap,
          chartRadius: MediaQuery.of(context).size.width / 1.7,
          legendOptions: LegendOptions(legendPosition: LegendPosition.bottom),
          chartValuesOptions: ChartValuesOptions(
            showChartValuesInPercentage: true,
          ),
        ),
      )),
    );
  }
}

class fav_chart extends StatelessWidget {
  Map<String, double> dataMap = {
    "Dinner": 2,
    "Lunch": 3,
    "Breakfast": 5,
  };

  fav_chart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: PieChart(
          dataMap: dataMap,
          chartRadius: MediaQuery.of(context).size.width / 1.7,
          legendOptions: LegendOptions(legendPosition: LegendPosition.bottom),
          chartValuesOptions: ChartValuesOptions(
            showChartValuesInPercentage: true,
          ),
        ),
      )),
    );
  }
}
