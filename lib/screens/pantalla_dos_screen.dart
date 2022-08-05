import 'package:flutter/material.dart';

import '../widgets/checkout_button_widget.dart';

class PantallaDosScreen extends StatelessWidget {
  static const String nameRoute = 'twoscreen';
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        color: Color(0xff020228),
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal);
    return Scaffold(
      body: Stack(children: [
        BackButton(
          onPressed: (() {
            Navigator.pushNamed(context, 'onescreen');
          }),
        ),
        Column(
          children: [
            Image.network(
              'https://picsum.photos/seed/413/600',
              width: 500,
            ),
            const ListTile(
              title: Text(
                'Nombre producto',
                style: textStyle,
              ),
              subtitle: Text(
                'Categoria',
                style: TextStyle(
                    color: Color(0xffcccccc),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),
              ),
              trailing: Text(
                '444444',
                style: textStyle,
              ),
            ),
            const ListTile(
              title: Text(
                'Descripción',
                style: TextStyle(
                    color: Color(0xff020228),
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal),
              ),
              subtitle: Text(
                  style: TextStyle(
                      color: Color(0xff020228),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal),
                  'Loremadsadfkhadfv adsf ahwoedfkhadsfjhvcasd oiAEUGFAJTEOPER             POEOKjjhksfhoaksdifosiadkjqoirppqourh jijwhbcjkhanfcalnewjktg'),
            )
          ],
        ),
      ]),
      floatingActionButton: CheckoutButton(),
    );
  }
}
