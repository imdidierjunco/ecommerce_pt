import 'package:flutter/material.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({
    Key? key,
    required String texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String texto = '';
    const textStyle = TextStyle(
        color: Color(0xFF020228), fontSize: 20, fontWeight: FontWeight.w600);
    return ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, 'threescreen');
        },
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFFFFC96B),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          minimumSize: const Size(460, 59),
        ),
        child: Text('$texto', style: textStyle)
        // side: BorderRadius(Radius.circular(radius: 10.0))),
        );
  }
}
