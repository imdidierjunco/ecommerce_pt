import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
        SizedBox(
          height: 500,
          child: Center(child: Lottie.asset('assets/lottie_animation.json')),
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
          height: 60,
        ),
        Container(
          margin: EdgeInsets.all(10),
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
              height: 25,
            ),
            Divider(),
            Container(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Total',
                  style: textStyle,
                ),
                Text(
                  r'$27500.7',
                  style: textStyle2,
                )
              ],
            )
          ]),
        )
      ]),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              'onescreen',
            );
          },
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFFFFC96B),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minimumSize: const Size(460, 59),
          ),
          child: const Text('Seguir comprando',
              style: TextStyle(
                  color: Color(0xFF020228),
                  fontSize: 20,
                  fontWeight: FontWeight.w600))),
    );
  }
}
