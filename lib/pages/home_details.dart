// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_projects/models/catalog.dart';
import 'package:flutter_projects/widgets/themes.dart';

import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailsPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            '\$${catalog.price}'.text.xl3.bold.red800.make(),
            10.heightBox,
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all((MyTheme.darkBluish)),
                shape: MaterialStateProperty.all(StadiumBorder()),
              ),
              child: 'Add to Cart'.text.color(Colors.white).make(),
            ).wh(120.0, 45.0),
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
          child: Column(
        children: <Widget>[
          Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image),
          ).h32(context),
          Expanded(
            // VxArc is use for this setting up the container width and  height
            child: VxArc(
              height: 30.0,
              arcType: VxArcType.convey,
              edge: VxEdge.top,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: <Widget>[
                    catalog.name.text.xl3.color(MyTheme.darkBluish).bold.make(),
                    catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                    10.heightBox,
                  ],
                ).py64(),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
