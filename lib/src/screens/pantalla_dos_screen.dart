import 'package:flutter/material.dart';

class PantallaDosScreen extends StatelessWidget {
  static const String nameRoute = 'twoscreen';

  @override
  Widget build(BuildContext context) {
    final Map arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    const textStyle = TextStyle(
        color: Color(0xff020228),
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal);
    return Scaffold(
      body: Stack(children: [
        AppBar(
          backgroundColor: Color(0XFFFFFFFF),
          leading: IconButton(
            color: const Color(0xFF000000),
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pushNamed(context, 'onescreen');
            },
          ),
        ),
        Column(
          children: [
            Image.network(
              arguments['image'],
              height: 450,
            ),
            ListTile(
              title: Text(
                arguments['title'],
                maxLines: 1,
                style: textStyle,
              ),
              subtitle: Text(
                arguments['category'],
                style: colorTexto(),
              ),
              trailing: Text(
                '\$${arguments['price'].toString()}',
                style: textStyle,
              ),
            ),
            ListTile(
                title: const Text(
                  'Descripción',
                  style: TextStyle(
                      color: Color(0xff020228),
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal),
                ),
                subtitle: Text(
                  arguments['description'],
                  style: const TextStyle(
                      color: Color(0xff020228),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal),
                ))
          ],
        ),
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
          child: const Text('Ir al carrito',
              style: TextStyle(
                  color: Color(0xFF020228),
                  fontSize: 20,
                  fontWeight: FontWeight.w600))),
    );
  }

  TextStyle colorTexto() {
    return const TextStyle(
        color: Color(0xffcccccc),
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal);
  }
}
