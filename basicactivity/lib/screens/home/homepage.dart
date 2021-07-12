import 'package:basicactivity/main.dart';
import 'package:basicactivity/models/catalog.dart';
import 'package:basicactivity/widgets/drawer.dart';
import 'package:basicactivity/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      drawer: MyDrawer(),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) => ItemWidget(
          item: CatalogModel.items[index],
        ),
      ),
    );
  }
}
