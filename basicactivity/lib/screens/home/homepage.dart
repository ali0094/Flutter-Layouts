import 'package:basicactivity/main.dart';
import 'package:basicactivity/models/catalog.dart';
import 'package:basicactivity/widgets/drawer.dart';
import 'package:basicactivity/widgets/item_widget.dart';
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
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: CatalogModel.items[index],
          );
        },
      ),
    );
  }
}
