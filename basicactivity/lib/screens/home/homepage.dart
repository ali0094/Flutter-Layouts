import 'package:basicactivity/main.dart';
import 'package:basicactivity/widgets/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      drawer: MyDrawer(),
      body: Container(
        child: Center(
          child: Text('Helo there'),
        ),
      ),
    );
  }
}
