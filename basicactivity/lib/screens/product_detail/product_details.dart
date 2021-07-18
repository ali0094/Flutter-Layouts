import 'package:basicactivity/models/catalog.dart';
import 'package:basicactivity/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductDetail extends StatelessWidget {
  final Item item;

  const ProductDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: item.name.text.make(),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.white,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$ ${item.price}".text.bold.color(Colors.teal).xl4.make(),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(StadiumBorder()),
                ),
                child: "Buy".text.xl.make(),
              ).wh(100, 45)
            ],
          ).p32(),
        ),
      ),
      backgroundColor: MyThemes.creamColor,
      body: SafeArea(
          child: Column(
        children: [
          Hero(
            tag: Key(item.id.toString()),
            child: Image.network(item.image),
          ).h32(context),
          Expanded(
              child: VxArc(
            height: 30.0,
            arcType: VxArcType.CONVEY,
            edge: VxEdge.TOP,
            child: Container(
              width: context.screenWidth,
              color: Colors.white,
              child: Column(
                children: [
                  item.name.text.xl4.color(Colors.teal).bold.make(),
                  item.desc.text.xl.make(),
                  10.heightBox,
                  "Lorem kasd sed eirmod ipsum labore invidunt magna et gubergren. Lorem amet rebum kasd sea est sed lorem. Takimata ea."
                      .text
                      .textStyle(TextStyle(color: Colors.grey))
                      .make()
                      .p16()
                ],
              ).py(64),
            ),
          ))
        ],
      )),
    );
  }
}
