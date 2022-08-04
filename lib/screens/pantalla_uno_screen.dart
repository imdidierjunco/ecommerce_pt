// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_pt/providers/products_provider.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        excludeHeaderSemantics: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Mi carrito',
            style: TextStyle(
                color: Color(0xFF020228),
                fontSize: 20,
                fontWeight: FontWeight.w600)),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                _showDialog(context);
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            children: <Widget>[
              Container(
                height: 110,
                width: 324,
                padding: EdgeInsets.all(12),
                child: ListTile(
                    title: Text('Nombre producto',
                        style: TextStyle(
                          color: Color(0xff020228),
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                        )),
                    subtitle: Text('Precio',
                        style: TextStyle(
                            color: Color(0xff020228),
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal)),
                    leading: Icon(Icons.photo, size: (77))),
              ),
              AddRemoveWidget(),
              Prices(),
            ]),
      ),
      floatingActionButton: CheckoutButton(),
    );
  }

  Widget _showDialog(context) {
    return AlertDialog(
      title: Text('Eliminar todo'),
      content: SingleChildScrollView(
          child: ListBody(
        children: const [
          Text('Se eliminarán todos los productos en el carrito')
        ],
      )),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'onescreen');
            },
            child: Text('Cancelar')),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'onescreen');
            },
            child: Text('Continuar'))
      ],
    );
  }
}
