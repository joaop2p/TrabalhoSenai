import 'package:flutter/material.dart';
import 'package:tcc/src/pages/CardapioPage.dart';
import 'package:tcc/src/pages/Pedidos.dart';
import 'package:tcc/src/pages/Login.dart';
import 'package:tcc/src/pages/acesso.dart';
import 'package:tcc/src/pages/Teclado.dart';
import 'package:tcc/src/pages/Menu.dart';

void main() => runApp(const tcc());

class tcc extends StatelessWidget {
  const tcc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QrCode Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // brightness: Brightness.dark,
          // scaffoldBackgroundColor: Color.fromARGB(255, 24, 146, 13),
          // elevatedButtonTheme: ElevatedButtonThemeData(
          //   style: ElevatedButton.styleFrom(
          //    primary: Color.fromARGB(255, 8, 118, 53),
          //   padding: EdgeInsets.symmetric(vertical: 20, horizontal: 36),
          //   onPrimary: Colors.black,
          //   textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          //  ),
          // ),
          ),
      themeMode: ThemeMode.dark,
      routes: {
        '/page1': (context) => QRCodePage(),
        '/page2': (context) => SplashScreen(),
        // '/page3': (context) => CodigoPage(),
        '/Menu': (context) => Menu(),
        '/CardapioPage': (context) => CardapioPage(),
        '/Pedido': (context) => Pedido()
      },
      initialRoute: '/page2',
    );
  }
}
