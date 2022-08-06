import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductsRepository {
  var url = "https://fakestoreapi.com/products/";

  loadProductsFromApi(String id) async {
    var response = await http.get(Uri.parse(url + id));
    return json.decode(response.body);
  }
}
