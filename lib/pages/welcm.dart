import 'package:flutter/material.dart';

class Welcmpage extends StatelessWidget {
  const Welcmpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 185, 181, 181),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "lib/images/hostel.png",
                height: 200,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Welcome to Tce hostels",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Let's Solve Queries, Rate meal and more....!",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal),
              ),
              SizedBox(
                height: 100,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/user');
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(left: 50, right: 50),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 71, 68, 68),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
