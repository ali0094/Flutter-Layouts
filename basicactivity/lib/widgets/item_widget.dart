import 'package:basicactivity/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print(item.name);
        },
        contentPadding: EdgeInsets.all(8),
        leading: Container(
          height: 100,
          width: 50,
          child: Image.network(item.image),
        ),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$ ${item.name.toString()}",
          style: TextStyle(
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
