// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';
import '../../widgets/themes.dart';
import 'catalog_image.dart';

// Catalog Item
class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    // VxBox its like a container
    return VxBox(
      child: Row(
        children: <Widget>[
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.image,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                catalog.name.text.lg.color(MyTheme.darkBluish).bold.make(),
                catalog.desc.text.textStyle(context.captionStyle).make(),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    '\$${catalog.price}'.text.xl.bold.make(),
                    10.heightBox,
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all((MyTheme.darkBluish)),
                        shape: MaterialStateProperty.all(StadiumBorder()),
                      ),
                      child: 'Buy'.text.color(Colors.white).make(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ).white.roundedLg.square(150.0).make().py16();
  }
}

class _AddToCart extends StatefulWidget {
  const _AddToCart();

  @override
  State<_AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<_AddToCart> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        isAdded = isAdded.toggle();
        setState(() {});
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all((MyTheme.darkBluish)),
        shape: MaterialStateProperty.all(StadiumBorder()),
      ),
      child: isAdded ? Icon(Icons.done) : 'Buy'.text.color(Colors.white).make(),
    );
  }
}
