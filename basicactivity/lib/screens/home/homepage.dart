import 'package:basicactivity/main.dart';
import 'package:basicactivity/models/catalog.dart';
import 'package:basicactivity/utils/routes.dart';
import 'package:basicactivity/widgets/home_widgets/catalog_header.dart';
import 'package:basicactivity/widgets/home_widgets/catalog_list.dart';
import 'package:basicactivity/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    loadJson();
  }

  void loadJson() async {
    var products = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(products);
    var productsItems = decodedData["products"];
    CatalogModel.items = List.from(productsItems)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyThemes.creamColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.cartRoute);
        },
        child: const Icon(CupertinoIcons.cart),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            children: [
              CatalogHeader(),
              !isLoading
                  ? CataLogList().expand()
                  : CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
