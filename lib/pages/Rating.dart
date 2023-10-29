import 'package:flutter/material.dart';

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => RatingState();
}

class RatingState extends State<Rating> {
  String Breakfast = '';
  String Lunch = '';
  String Dinner = '';
  String fav = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(18),
        children: [
          Column(
            children: [
              Column(children: [
                Column(children: [
                  Text(
                    "How is Lunch today?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Radio(
                              value: 'Very Good',
                              groupValue: Lunch,
                              onChanged: (value) {
                                setState(() {
                                  Lunch = value!;
                                });
                              }),
                          Text('Very Good'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 'Good',
                              groupValue: Lunch,
                              onChanged: (value) {
                                setState(() {
                                  Lunch = value!;
                                });
                              }),
                          Text('Good'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 'Normal',
                              groupValue: Lunch,
                              onChanged: (value) {
                                setState(() {
                                  Lunch = value!;
                                });
                              }),
                          Text('Normal'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 'Poor',
                              groupValue: Lunch,
                              onChanged: (value) {
                                setState(() {
                                  Lunch = value!;
                                });
                              }),
                          Text('Poor'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 'Very Poor',
                              groupValue: Lunch,
                              onChanged: (value) {
                                setState(() {
                                  Lunch = value!;
                                });
                              }),
                          Text('Very Poor'),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "How is Dinner today?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Radio(
                              value: 'Very Good',
                              groupValue: Dinner,
                              onChanged: (value) {
                                setState(() {
                                  Dinner = value!;
                                });
                              }),
                          Text('Very Good'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 'Good',
                              groupValue: Dinner,
                              onChanged: (value) {
                                setState(() {
                                  Dinner = value!;
                                });
                              }),
                          Text('Good'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 'Normal',
                              groupValue: Dinner,
                              onChanged: (value) {
                                setState(() {
                                  Dinner = value!;
                                });
                              }),
                          Text('Normal'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 'Poor',
                              groupValue: Dinner,
                              onChanged: (value) {
                                setState(() {
                                  Dinner = value!;
                                });
                              }),
                          Text('Poor'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 'Very Poor',
                              groupValue: Dinner,
                              onChanged: (value) {
                                setState(() {
                                  Dinner = value!;
                                });
                              }),
                          Text('Very poor'),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "How is Breakfast today?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Column(children: [
                    Row(
                      children: [
                        Radio(
                            value: 'Very Good',
                            groupValue: Breakfast,
                            onChanged: (value) {
                              setState(() {
                                Breakfast = value!;
                              });
                            }),
                        Text('Very Good'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 'Good',
                            groupValue: Breakfast,
                            onChanged: (value) {
                              setState(() {
                                Breakfast = value!;
                              });
                            }),
                        Text('Good'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 'Normal',
                            groupValue: Breakfast,
                            onChanged: (value) {
                              setState(() {
                                Breakfast = value!;
                              });
                            }),
                        Text('Normal'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 'Poor',
                            groupValue: Breakfast,
                            onChanged: (value) {
                              setState(() {
                                Breakfast = value!;
                              });
                            }),
                        Text('Poor'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 'Very Poor',
                            groupValue: Breakfast,
                            onChanged: (value) {
                              setState(() {
                                Breakfast = value!;
                              });
                            }),
                        Text('Very Poor'),
                      ],
                    ),
                  ]),
                  Text(
                    "What is ur Favorite meal of the day?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Column(children: [
                    Row(
                      children: [
                        Radio(
                            value: 'Breakfast',
                            groupValue: fav,
                            onChanged: (value) {
                              setState(() {
                                fav = value!;
                              });
                            }),
                        Text('Breakfast'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 'Lunch',
                            groupValue: fav,
                            onChanged: (value) {
                              setState(() {
                                fav = value!;
                              });
                            }),
                        Text('Lunch'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 'Dinner',
                            groupValue: fav,
                            onChanged: (value) {
                              setState(() {
                                fav = value!;
                              });
                            }),
                        Text('Dinner'),
                      ],
                    ),
                  ])
                ]),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
