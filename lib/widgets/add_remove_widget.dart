import 'package:flutter/material.dart';

class AddRemoveWidget extends StatelessWidget {
  const AddRemoveWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int cant = 1;
    const textStyle = TextStyle(
      color: Color(0xff020228),
      fontSize: 15,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    );
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      IconButton(
        icon: const Icon(Icons.remove),
        iconSize: 15,
        onPressed: () {
          cant--;
        },
      ),
      Text('$cant', style: textStyle),
      IconButton(
        icon: const Icon(Icons.add),
        iconSize: 15,
        onPressed: () {
          cant++;
        },
      ),
    ]);
  }
}
