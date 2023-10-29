import 'package:flutter/material.dart';
import 'package:my_app/pages/Creategirls.dart';
import 'package:my_app/pages/bg.dart';
import 'package:my_app/pages/cube.dart';
import 'package:my_app/pages/dasboardgirls.dart';
import 'package:my_app/pages/dashboardboys.dart';
import 'package:my_app/pages/Boys_reg.dart';
import 'package:my_app/pages/feedback.dart';
import 'package:my_app/pages/login_pagegirls.dart';
import 'package:my_app/pages/login_pageboys.dart';
import 'package:my_app/pages/Girls_reg.dart';
import 'package:my_app/pages/Homepage.dart';
import 'package:my_app/pages/createaccount.dart';
import 'package:my_app/pages/boysgirlschoose.dart';
import 'package:my_app/pages/profile.dart';
import 'package:my_app/pages/profilegirls.dart';
import 'package:my_app/pages/q_entry.dart';
import 'package:my_app/pages/querydisplaypage.dart';
import 'package:my_app/pages/welcm.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserBoysData()),
        ChangeNotifierProvider(create: (context) => UserGirlsData()),
        ChangeNotifierProvider(create: (context) => QueryProvider()),
        // Add your QueryProvider here
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/registerg': (context) => Girls(),
        '/registerb': (context) => Boys(),
        '/loging': (context) => G_LoginPage(),
        '/loginb': (context) => B_LoginPage(),
        '/account': (context) => Create_account(),
        '/bfirst': (context) => BFirstpage(),
        '/gfirst': (context) => GFirstpage(),
        '/query': (context) => Npage(),
        '/rating': (context) => Cube(),
        '/oq_entry': (context) => Q_entry(),
        '/wq_entry': (context) => Q_entry(),
        '/mq_entry': (context) => Q_entry(),
        '/fq_entry': (context) => Q_entry(),
        '/eq_entry': (context) => Q_entry(),
        '/home': (context) => Newpage(),
        '/feed': (context) => Feedbackpage(),
        '/disp': (context) => Querydisplay(),
        '/profile': (context) => DisplayPage(),
        '/girlsprofile': (context) => Girlsprofile(),
        '/gaccount': (context) => GCreate_account(),
        '/welcm': (context) => Welcmpage()
      },
    );
  }
}
