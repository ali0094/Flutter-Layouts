import 'package:flutter/material.dart';

//RUN|DEBUG
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Material(
      child: Center(
        child: Container(
          child: Text('test'),
        ),
      ),
    ));
  }
}
