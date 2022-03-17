import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[300],
          centerTitle: true,
          title: Container(
            margin: const EdgeInsets.all(2),
            child: const Image(
              image: AssetImage('assets/Meta-Logo.png'),
              width: 200,
            ),
          ),
        ),
      ),
    );
  }
}
