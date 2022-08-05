import 'package:flutter/material.dart';

class ActionsAlert extends StatelessWidget {
  const ActionsAlert({
    Key? key,
    required this.textStyle,
  }) : super(key: key);

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFFFFC96B),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            minimumSize: const Size(122, 43),
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'onescreen');
          },
          child: Text(
            'Cancelar',
            style: textStyle,
          )),
      ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFFF5f5f5),
            shape: RoundedRectangleBorder(
                side: const BorderSide(color: Color(0xFFFFC96B), width: 1),
                borderRadius: BorderRadius.circular(5)),
            minimumSize: const Size(122, 43),
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'onescreen');
          },
          child: Text(
            'Continuar',
            style: textStyle,
          ))
    ]);
  }
}
