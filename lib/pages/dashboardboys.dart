import 'package:flutter/material.dart';
import 'package:my_app/pages/Boys_reg.dart';
import 'package:my_app/pages/profile.dart';

class BFirstpage extends StatelessWidget {
  const BFirstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        drawer: Drawer(
          child: Container(
            color: Colors.grey[300],
            child: ListView(
              children: [
                DrawerHeader(
                    child: Center(
                        child: Text(
                  "Hello..!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ))),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () {
                    Navigator.pushNamed(context, '/welcm');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Logout"),
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                )
              ],
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.grey[800],
              //leading: Icon(Icons.menu),
              title: Text('H O S T E L'),
              expandedHeight: 200,
              floating: true,
            ),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.all(25),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                    height: 300,
                    color: Colors.grey,
                    child: Expanded(
                      child: Column(children: [
                        Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Image.asset(
                                "lib/images/question.png",
                                height: 150, // Set the height
                                width: 200, // Set the width
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Queries",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/query');
                              },
                              child: Text(
                                'Click',
                                style: TextStyle(fontSize: 18),
                              ),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.grey, // Text color
                                minimumSize: Size(120, 50), // Button size
                                padding: EdgeInsets.all(15), // Button padding
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      10), // Button border radius
                                ),
                              ))
                        ]),
                      ]),
                    )),
              ),
            )),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.all(25),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                    height: 300,
                    color: Colors.grey,
                    child: Expanded(
                      child: Column(children: [
                        Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Image.asset(
                                "lib/images/salad.png",
                                height: 150, // Set the height
                                width: 200, // Set the width
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Meal rating",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/rating');
                              },
                              child: Text(
                                'Click',
                                style: TextStyle(fontSize: 18),
                              ),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.grey, // Text color
                                minimumSize: Size(120, 50), // Button size
                                padding: EdgeInsets.all(15), // Button padding
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      10), // Button border radius
                                ),
                              ))
                        ]),
                      ]),
                    )),
              ),
            )),
          ],
        ));
  }
}
