import 'package:flutter/material.dart';
import 'dart:async';

import 'package:my_app/pages/welcm.dart';

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Welcmpage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 151, 151, 150),
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 39, 37, 37),
        title: Text('Hostels'),
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Welcome to Our TCE  Hostels!',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                      fontFamily: 'Pacifico'),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    HostelBox(
                      hostelType: 'GirlsHostel',
                      icon: Icons.local_florist,
                      color: Color.fromARGB(255, 117, 119, 121),
                      context: context,
                      onTap: () {
                        Navigator.pushNamed(context, '/loging');
                      },
                    ),
                    SizedBox(width: 16.0),
                    HostelBox(
                        hostelType: 'Boys Hostel',
                        icon: Icons.directions_run,
                        color: Color.fromARGB(255, 117, 119, 121),
                        context: context,
                        onTap: () {
                          Navigator.pushNamed(context, '/loginb');
                        })
                  ])
            ]),
      ),
    );
  }
}

class HostelBox extends StatelessWidget {
  final String hostelType;
  final IconData icon;
  final Color color;
  final BuildContext context;
  final onTap;
  HostelBox(
      {super.key,
      required this.hostelType,
      required this.icon,
      required this.color,
      required this.context,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150.0,
        height: 150.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: color),
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 50.0,
              color: Colors.white,
            ),
            SizedBox(height: 10.0),
            Text(
              hostelType,
              style: TextStyle(
                  fontSize: 18.0, color: Colors.white, fontFamily: 'Roboto'),
            ),
          ],
        ),
      ),
    );
  }
}
