// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, null_check_always_fails, prefer_const_literals_to_create_immutables, unnecessary_null_comparison

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_projects/models/catalog.dart';
import 'package:flutter_projects/utils/routs.dart';
import 'package:flutter_projects/widgets/drawer.dart';
import 'package:flutter_projects/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'home_widgets/catalog_header.dart';
import 'home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int day = 30;

  final String flutterName = 'Jewel Uddin';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    // insert json file path
    final catalogJson = await rootBundle.loadString('files/catalog.json');
    // decoding json means convert String to another Format
    final decodeJson = jsonDecode(catalogJson);
    var productsData = decodeJson["products"];
    // Item to List Convert
    CatalogItems.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    // Reload the data
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pushNamed(context, MyRouts.cartRout);
      },
        backgroundColor: MyTheme.darkBluish,
        child: Icon(CupertinoIcons.shopping_cart),
      ),
      // Previous Design
      /* appBar: AppBar(
        title: Text('Catalog App'),
        centerTitle: true,
      ),
      // Recycler View
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogItems.items.length,
          itemBuilder: (context, index){
            return ItemWidget(
              item: CatalogItems.items[index],
              // change the null value
            );
          }
        ),
      ), */
      body: SafeArea(
        child: Container(
          // means All side padding shortcut
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CatalogHeader(),
              if (CatalogItems.items != null && CatalogItems.items.isNotEmpty)
                CatalogList().expand()
              else
                Center(
                  child: CircularProgressIndicator().centered().expand(),
                )
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}



