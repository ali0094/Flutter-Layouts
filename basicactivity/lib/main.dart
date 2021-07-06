import 'package:basicactivity/screens/home/homepage.dart';
import 'package:basicactivity/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
      initialRoute: "/",
      routes: {
        "/": (context) => Login(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
