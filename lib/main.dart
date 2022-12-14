import 'package:ecommerce_pt/src/screens/pantalla_dos_screen.dart';
import 'package:ecommerce_pt/src/screens/pantalla_tres_screen.dart';
import 'package:ecommerce_pt/src/screens/pantalla_uno_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const EcommercePT());
}

class EcommercePT extends StatelessWidget {
  const EcommercePT({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce',
      initialRoute: PantallaUnoScreen.nameRoute,
      routes: {
        PantallaUnoScreen.nameRoute: ((context) => const PantallaUnoScreen()),
        PantallaDosScreen.nameRoute: ((context) => const PantallaDosScreen()),
        PantallaTresScreen.nameRoute: ((context) => const PantallaTresScreen()),
      },
      theme: ThemeData(fontFamily: 'Poppins'),
    );
  }
}
