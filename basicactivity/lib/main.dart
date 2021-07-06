import 'package:basicactivity/screens/home/homepage.dart';
import 'package:flutter/material.dart';

//RUN|DEBUG
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
