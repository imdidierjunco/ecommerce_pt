import 'dart:convert';

import 'package:ecommerce_pt/models/products_model.dart';
export 'package:ecommerce_pt/models/products_model.dart';

import 'package:http/http.dart' as http;

class ProductsProvider {
  final _url = 'https://fakestoreapi.com';

  Future<List<ProductModel>> cargarProducts() async {
    final url = '$_url/productos' as Uri;
    final resp = await http.get(url);
    final dataDecoded = json.decode(resp.body);
    print(dataDecoded);
    return [];
  }
}
