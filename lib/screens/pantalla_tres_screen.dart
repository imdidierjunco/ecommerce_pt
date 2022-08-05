import 'package:ecommerce_pt/widgets/checkout_button_widget.dart';
import 'package:flutter/material.dart';

class PantallaTresScreen extends StatelessWidget {
  static const String nameRoute = 'threescreen';
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 12,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        color: Color(0xffcccccc));
    const textStyle2 = TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        color: Color(0xff020228));
    return Scaffold(
      body: Column(children: [
        Image.network(
          'https://picsum.photos/seed/413/600',
          width: 500,
        ),
        Container(
          height: 35,
        ),
        const Text(
          '¡Compra realizada con éxito!',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              color: Color(0xff020228)),
        ),
        Container(
          height: 80,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Fecha',
                  style: textStyle,
                ),
                Text('02/08/2022', style: textStyle2)
              ],
            ),
            Container(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Método de pago',
                  style: textStyle,
                ),
                Text(
                  'Efectivo',
                  style: textStyle2,
                )
              ],
            ),
            Container(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Total',
                  style: textStyle,
                ),
                Text(
                  '30400',
                  style: textStyle2,
                )
              ],
            )
          ]),
        )
      ]),
      floatingActionButton: const CheckoutButton(),
    );
  }
}
