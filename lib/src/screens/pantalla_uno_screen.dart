// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_pt/src/cart/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/actions_alert.dart';

class PantallaUnoScreen extends StatefulWidget {
  static const String nameRoute = 'onescreen';
  @override
  State<PantallaUnoScreen> createState() => _PantallaUnoScreenState();
}

class _PantallaUnoScreenState extends State<PantallaUnoScreen> {
  final CartController cartStateController = Get.put(CartController());

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        excludeHeaderSemantics: false,
        backgroundColor: Color(0XFFF5F5F5),
        elevation: 0.0,
        centerTitle: true,
        title: const Text('Mi carrito',
            style: TextStyle(
                color: Color(0xFF020228),
                fontSize: 20,
                fontWeight: FontWeight.w600)),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                _showDialog();
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
              ))
        ],
      ),
      body: GetX<CartController>(
          init: cartStateController,
          builder: (CartController cartStateCtrl) {
            if (cartStateCtrl.loading.value) {
              return Center(child: CircularProgressIndicator());
            }
            // if (cartController.cartItems.isEmpty) {
            //   return Center(child: Text("No cart items found!"));
            // }
            return Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: cartStateCtrl.cartItems.length,
                          itemBuilder: (context, index) {
                            return Container(
                                margin: EdgeInsets.all(3),
                                color: Color(0XFFF9F9F9),
                                padding: EdgeInsets.all(10),
                                height: 110,
                                width: 350,
                                child: ListTile(
                                    title: Text(
                                        cartStateCtrl.cartItems[index]
                                            ["product"]["title"],
                                        maxLines: 2,
                                        style: TextStyle(
                                          color: Color(0xff020228),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal,
                                        )),
                                    subtitle: Text(
                                        "\$${cartStateCtrl.cartItems[index]["product"]["price"]}",
                                        style: TextStyle(
                                            color: Color(0xff020228),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            fontStyle: FontStyle.normal)),
                                    leading: Image.network(
                                      cartStateCtrl.cartItems[index]["product"]
                                          ["image"],
                                      width: 100,
                                    ),
                                    trailing: Container(
                                        height: 130,
                                        width: 110,
                                        color: Color(0XFFF9F9F9),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              IconButton(
                                                icon: const Icon(Icons.remove),
                                                iconSize: 15,
                                                onPressed: () {
                                                  cartStateCtrl.cartItems[index]
                                                          ["quantity"]
                                                      .toString();
                                                },
                                              ),
                                              Text(
                                                  cartStateCtrl.cartItems[index]
                                                          ["quantity"]
                                                      .toString(),
                                                  style: TextStyle(
                                                    color: Color(0xff020228),
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w700,
                                                    fontStyle: FontStyle.normal,
                                                  )),
                                              IconButton(
                                                icon: const Icon(Icons.add),
                                                iconSize: 15,
                                                onPressed: () {
                                                  cartStateCtrl.cartItems[index]
                                                          ["quantity"] =
                                                      cartStateCtrl.cartItems[
                                                                  index]
                                                              ["quantity"] +
                                                          1;
                                                },
                                              ),
                                            ])),
                                    onTap: () {
                                      Navigator.pushNamed(context, 'twoscreen',
                                          arguments: (cartStateCtrl
                                              .cartItems[index]['product']));
                                    }));
                          }),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        color: Color(0XFFF9F9F9),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 40,
                                width: 440,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Total a pagar:', style: colorTexto()),
                                    Text("\$${cartStateCtrl.subtotal}",
                                        style: colorTexto())
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      'threescreen',
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color(0xFFFFC96B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    minimumSize: const Size(460, 59),
                                  ),
                                  child: Text('Finalizar compra',
                                      style: TextStyle(
                                          color: Color(0xFF020228),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600))),
                            ])),
                  ]),
            );
          }),
    );
  }

  TextStyle colorTexto() {
    return TextStyle(
        color: Color(0xff020228),
        fontSize: 15,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal);
  }

  _showDialog() {
    return showDialog(
        context: context,
        builder: (context) {
          const textStyle = TextStyle(
              color: Color(0xff020228),
              fontSize: 12,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400);
          const textStyle2 = TextStyle(
              color: Color(0xff020228),
              fontSize: 20,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600);
          return AlertDialog(
            actionsAlignment: MainAxisAlignment.center,
            title: Center(
                child: Text(
              'Eliminar todo',
              style: textStyle2,
            )),
            content: SingleChildScrollView(
                child: ListBody(
              children: const [
                Text('Se eliminarán todos los productos en el carrito')
              ],
            )),
            actions: const [
              ActionsAlert(textStyle: textStyle),
            ],
          );
        });
  }
}
