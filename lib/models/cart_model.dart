
import 'CatalogModel.dart';
import 'catalog.dart';

class CartModel {
  // Catalog field
  late CatalogModel _catalogModel;

  // Collection of Ids - store ids for each item
  final List<int> _itemIds = [];

  // Get Catalog data
  CatalogModel get catalog => _catalogModel;

  // Set Catalog data
  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalogModel = newCatalog;
  }

  // Get items in the cart
  List get items =>
      _itemIds.map((id) => _catalogModel.getById(id)).toList();

  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add items to the cart
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove items from the cart
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}