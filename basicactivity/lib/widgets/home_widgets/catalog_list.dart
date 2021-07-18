import 'package:basicactivity/models/catalog.dart';
import 'package:basicactivity/screens/product_detail/product_details.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'catalog_image.dart';

class CataLogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          child: CataLogItem(item: catalog),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetail(item: catalog),
            ),
          ),
        );
      },
    );
  }
}

class CataLogItem extends StatelessWidget {
  final Item item;

  const CataLogItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(item.id.toString()),
          child: ProductImage(
            image: item.image,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              item.name.text.lg.color(Colors.teal).bold.make(),
              item.desc.text.make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$ ${item.price}".text.bold.xl.make(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        StadiumBorder(),
                      ),
                    ),
                    child: "Add to cart".text.semiBold.sm.make(),
                  ),
                ],
              ).pOnly(right: 8)
            ],
          ),
        ),
      ],
    )).white.roundedLg.square(150).make().py16();
  }
}
