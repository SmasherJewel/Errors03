class CatalogItems {
  static List<Item> items = [
    // currently dummy data
    Item(
      id: 1,
      name: 'iPhone 15',
      desc:
          'The screen is 15.54 cm (6.12″) diagonally (actual viewable area is less).',
      price: 999,
      color: 'Natural Titanium',
      // network image getting error update in future
      image: 'images/iphone_15_pro_natural_titanium.png',
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
  // after this not completed Dart class Generator

  // catalogJson constructor Map
  // if you have multiple dataType then use dynamic
  // Map to Class
   factory Item.fromMap(Map<String, dynamic> map) {
    // factory is use to final variable or logical function
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }
  // class to Map
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}

