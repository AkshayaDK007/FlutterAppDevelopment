import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:my_app/components/my_button.dart';

class Newpage extends StatefulWidget {
  const Newpage({super.key});

  @override
  State<Newpage> createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
          slideTransform: CubeTransform(),
          slideIndicator: CircularSlideIndicator(
              padding: EdgeInsets.only(bottom: 50),
              currentIndicatorColor: Colors.white),
          unlimitedMode: true,
          children: [
            Container(
              color: Colors.grey[200],
              child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    margin: EdgeInsets.all(25),
                    height: 200,
                    child: Column(children: [
                      Image.asset(
                        "lib/images/girl.png",
                        height: 300, // Set the height
                        width: 300, // Set the width
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Women's hostel",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Hello...Girls! Welcome to our home. The app just built to increase your comfort and convenience. Get ready to solve your queries in no time, immediate rating of the meal and a lot more....!Step into a world of elegance and empowerment. Experience the epitome of comfort and security in our girls hostel.",
                        style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyButton(
                        text: 'Let me in',
                        onTap: () {
                          Navigator.pushNamed(context, '/loging');
                        },
                      ),
                    ]),
                  )),
            ),
            Container(
              color: Colors.grey[200],
              child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    margin: EdgeInsets.all(25),
                    height: 200,
                    child: Column(children: [
                      Image.asset(
                        "lib/images/boy.png",
                        height: 300, // Set the height
                        width: 300, // Set the width
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Men's hostel",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Hello...Boys! Welcome to our home. The app just built to increase your comfort and convenience. Get ready to solve your queries in no time, immediate rating of the meal and a lot more....!Step into a world of elegance and empowerment. Experience the epitome of comfort and security in our boyss hostel.",
                        style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyButton(
                        text: 'Let me in',
                        onTap: () {
                          Navigator.pushNamed(context, '/loginb');
                        },
                      ),
                    ]),
                  )),
            ),
          ]),
    );
  }
}
