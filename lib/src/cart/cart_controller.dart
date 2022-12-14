import 'package:ecommerce_pt/src/cart/cart_repository.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  CartRepository cartRepository = CartRepository();

  var cartItems = [];
  var loading = false.obs;
  var subtotal = 0.0.obs;
  List<int> quantity = [];

  CartController() {
    loadCartFromApi();
  }

  loadCartFromApi() async {
    loading(true);
    List<dynamic> productsList = await cartRepository.loadCartFromApi();

    for (var i = 0; i < productsList.length; i++) {
      var product =
          await cartRepository.getProductFromApi(productsList[i]["productId"]);
      subtotal(subtotal.value + product["price"] * productsList[i]["quantity"]);
      cartItems
          .add({"product": product, "quantity": productsList[i]["quantity"]});

      quantity.add(productsList[i]["quantity"]);
    }
    loading(false);
  }
}
