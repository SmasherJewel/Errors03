import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

// Header Class
class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        'Catalog App'.text.xl5.bold.color(Colors.deepPurpleAccent).make(),
        'Trending Products'.text.xl2.make(),
      ],
    );
  }
}