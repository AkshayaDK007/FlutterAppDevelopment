import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:my_app/components/my_button.dart';

class Npage extends StatefulWidget {
  const Npage({super.key});

  @override
  State<Npage> createState() => _NpageState();
}

class _NpageState extends State<Npage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
          slideTransform: DepthTransform(),
          slideIndicator: CircularSlideIndicator(
              padding: EdgeInsets.only(bottom: 50),
              currentIndicatorColor: Colors.white),
          unlimitedMode: true,
          children: [
            Container(
              color: Colors.grey[200],
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    margin: EdgeInsets.all(25),
                    height: 200,
                    child: Column(children: [
                      Image.asset(
                        "lib/images/backup.png",
                        height: 300, // Set the height
                        width: 300, // Set the width
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Electric queries",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Facing an electrical issue? Reach out via the app for a swift resolution.If you encounter any electrical issues within your room or common areas, please don't hesitate to contact us through the mobile app.Your safety and comfort are our top priorities, and we're committed to ensuring a hassle-free electrical experience during your stay. ",
                        style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          MyButton(
                            text: 'Queries..',
                            onTap: () {
                              Navigator.pushNamed(context, '/eq_entry');
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MyButton(
                            text: 'View Queries',
                            onTap: () {
                              Navigator.pushNamed(context, '/disp');
                            },
                          ),
                        ],
                      ),
                    ]),
                  )),
            ),
            Container(
              color: Colors.grey[200],
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    margin: EdgeInsets.all(25),
                    height: 200,
                    child: Column(children: [
                      Image.asset(
                        "lib/images/save-water.png",
                        height: 300, // Set the height
                        width: 300, // Set the width
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Water Queries",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Water concern? Contact us through the app for a prompt fix.If you have any concerns about water quality, pressure, or plumbing matters, please let us know through the mobile app.We're committed to ensuring you have a seamless and satisfactory experience with this vital amenity.",
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
                        text: 'Queries..',
                        onTap: () {
                          Navigator.pushNamed(context, '/wq_entry');
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyButton(
                        text: 'View Queries',
                        onTap: () {
                          Navigator.pushNamed(context, '/disp');
                        },
                      ),
                    ]),
                  )),
            ),
            Container(
              color: Colors.grey[200],
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    margin: EdgeInsets.all(25),
                    height: 200,
                    child: Column(children: [
                      Image.asset(
                        "lib/images/dish.png",
                        height: 300, // Set the height
                        width: 300, // Set the width
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Food queries",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Have a dietary request? Let us know on the app.If you have specific dietary needs, allergies, or special requests, feel free to inform us via the mobile app.Your satisfaction with every meal is our goal.",
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
                        text: 'Queries..',
                        onTap: () {
                          Navigator.pushNamed(context, '/fq_entry');
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyButton(
                        text: 'View Queries',
                        onTap: () {
                          Navigator.pushNamed(context, '/disp');
                        },
                      ),
                    ]),
                  )),
            ),
            Container(
              color: Colors.grey[200],
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    margin: EdgeInsets.all(25),
                    height: 200,
                    child: Column(children: [
                      Image.asset(
                        "lib/images/cleanliness.png",
                        height: 300, // Set the height
                        width: 300, // Set the width
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Maintenance Queries",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Need maintenance? Report it in the app for quick assistance.For any maintenance-related issues in your room or the common areas, we encourage you to use the mobile app for a streamlined reporting process.We prioritize your comfort and your well-being is our focus.",
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
                        text: 'Queries..',
                        onTap: () {
                          Navigator.pushNamed(context, '/mq_entry');
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyButton(
                        text: 'View Queries',
                        onTap: () {
                          Navigator.pushNamed(context, '/disp');
                        },
                      ),
                    ]),
                  )),
            ),
            Container(
              color: Colors.grey[200],
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    margin: EdgeInsets.all(25),
                    height: 200,
                    child: Column(children: [
                      Image.asset(
                        "lib/images/ellipsis.png",
                        height: 300, // Set the height
                        width: 300, // Set the width
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Other Queries",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Any other queries? Use the app for quick solution.Your queries and concerns are important to us. If you have inquiries about amenities, services, or any other aspect of your stay, please use the mobile app to reach out. ",
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
                        text: 'Queries..',
                        onTap: () {
                          Navigator.pushNamed(context, '/oq_entry');
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyButton(
                        text: 'View Queries',
                        onTap: () {
                          Navigator.pushNamed(context, '/disp');
                        },
                      ),
                    ]),
                  )),
            ),
          ]),
    );
  }
}
