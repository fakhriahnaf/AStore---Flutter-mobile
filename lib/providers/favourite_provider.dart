import 'package:AStore/models/product_model.dart';
import 'package:flutter/material.dart';

class FavouriteProvider with ChangeNotifier {
  List<ProductModel> _favourite = [];

  List<ProductModel> get favourite => _favourite;

  set favourite(List<ProductModel> favourite) {
    _favourite = favourite;
    notifyListeners();
  }

  setProduct(ProductModel product) {
    if (!isFavourite(product)) {
      _favourite.add(product);
    } else {
      _favourite.removeWhere((element) => element.id == product.id);
    }

    notifyListeners();
  }

  isFavourite(ProductModel product) {
    if (_favourite.indexWhere((element) => element.id == product.id) == -1) {
      return false;
    } else {
      return true;
    }
  }
}
