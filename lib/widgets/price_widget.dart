import 'package:flutter/cupertino.dart';

class Prices extends StatelessWidget {
  const Prices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        color: Color(0xff020228),
        fontSize: 15,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal);
    return SizedBox(
      height: 45.5,
      width: 332,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Total a pagar:', style: textStyle),
          Text('27.000', style: textStyle)
        ],
      ),
    );
  }
}
