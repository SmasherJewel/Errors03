// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_projects/pages/home_details.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';
import '../../widgets/themes.dart';
import 'catalog_item.dart';

// CatalogList Class
class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogItems.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogItems.items[index];
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                // Going to Homepage when we click on the image
                builder: (context) => HomeDetailsPage(catalog: catalog),
              ),
            ),
            child: CatalogItem(
              catalog: catalog,
            ),
          );
        });
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

