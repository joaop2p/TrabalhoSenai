import 'package:flutter/material.dart';
import 'package:tcc/src/page1.dart';
import 'package:tcc/src/page2.dart';
import 'package:tcc/src/pages/page3.dart';
import 'package:tcc/src/qrcode.dart';

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
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3()
      },
      initialRoute: '/page2',
    );
  }
}
