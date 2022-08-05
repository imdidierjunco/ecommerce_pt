// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_pt/providers/products_provider.dart';
import 'package:flutter/material.dart';

import '../models/carts_model.dart';
import '../widgets/actions_alert.dart';
import '../widgets/add_remove_widget.dart';
import '../widgets/checkout_button_widget.dart';
import '../widgets/price_widget.dart';

class PantallaUnoScreen extends StatefulWidget {
  static const String nameRoute = 'onescreen';

  @override
  State<PantallaUnoScreen> createState() => _PantallaUnoScreenState();
}

class _PantallaUnoScreenState extends State<PantallaUnoScreen> {
  final productsProvider = ProductsProvider();
  List<ProductModel> products = [];
  List<CartModel> cart = [];

  @override
  void initState() {
    super.initState();
    productsProvider.getProducts().then((value) async {
      setState(() {
        products.addAll(value);
      });
    });
  }

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
      body: Column(mainAxisSize: MainAxisSize.min, children: [
        Expanded(
          child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, int index) {
                // int userid = cart[index].userId;
                return Container(
                  color: Color(0XFFF5F5F5),
                  padding: EdgeInsets.all(10),
                  height: 130,
                  width: 350,
                  child: ListTile(
                    title: Text(products[index].title,
                        maxLines: 2,
                        style: TextStyle(
                          color: Color(0xff020228),
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                        )),
                    subtitle: Text(r'$' + products[index].price,
                        style: TextStyle(
                            color: Color(0xff020228),
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal)),
                    leading: Image.network(
                      products[index].image,
                      width: 100,
                    ),
                    trailing: Container(
                        height: 130,
                        width: 102,
                        color: Color(0XFFF5F5F5),
                        child: AddRemoveWidget()),
                    onTap: () {
                      Navigator.pushNamed(context, 'twoscreen');
                    },
                  ),
                );
              }),
        )
      ]),
      floatingActionButton: Container(
          color: Color(0XFFF5F5F5),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Prices(),
                CheckoutButton(
                  texto: 'Finalizar compra',
                )
              ])),
    );
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
