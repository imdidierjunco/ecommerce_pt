import 'dart:convert';

import 'package:ecommerce_pt/models/products_model.dart';
export 'package:ecommerce_pt/models/products_model.dart';

import 'package:http/http.dart' as http;

import '../models/carts_model.dart';

class ProductsProvider {
  final _url = 'fakestoreapi.com';

  Future<List<ProductModel>> getProducts() async {
    final url = Uri.https(
      _url,
      '/products',
    );
    //'$_url/carts/2' as Uri;
    final resp = await http.get(url);
    final dataDecoded = json.decode(resp.body);

    List<ProductModel> dataProduct = [];

    for (var element in dataDecoded) {
      dataProduct.add(ProductModel.fromJson(element));
    }
    return dataProduct;
  }

  // Future<List<CartModel>> getProductsInCar() async {
  //   final url = Uri.https(
  //     _url,
  //     '/carts/2',
  //   );
  //   //'$_url/carts/2' as Uri;
  //   final resp = await http.get(url);
  //   final dataDecoded = json.decode(resp.body);
  //   print(dataDecoded);

  //   List<CartModel> dataCart = [];

  //   for (var element in dataDecoded) {
  //     dataCart.add(CartModel.fromJson(element));
  //   }
  //   return dataCart;
  // }
}
