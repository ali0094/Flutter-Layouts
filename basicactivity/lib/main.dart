import 'package:basicactivity/screens/home/cart/cart_page.dart';
import 'package:basicactivity/screens/home/homepage.dart';
import 'package:basicactivity/screens/login/login.dart';
import 'package:basicactivity/utils/routes.dart';
import 'package:basicactivity/widgets/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemes.lightTheme(context),
      themeMode: ThemeMode.system,
      darkTheme: MyThemes.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.loginRoute: (context) => Login(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
