import 'package:flutter/material.dart';

class CardapioPage extends StatelessWidget {
  const CardapioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    botaoAction() {
      Navigator.pushNamed(context, '/hotel');
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(230, 211, 171, 2),
            centerTitle: true,
            title: const Image(
              image: AssetImage('assets/logo.png'),
              width: 150,
              height: 50,
            ),
          ),
          body: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(10)),
              Center(
                heightFactor: 2,
                child: Text('Cardapio',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ),
              Padding(padding: EdgeInsets.all(8)),
              Container(
                height: 55,
                color: Colors.amber[600],
                child: const Center(child: Text('Entry A')),
              ),
              Container(
                height: 55,
                color: Colors.amber[500],
                child: const Center(child: Text('Entry B')),
              ),
              Container(
                height: 55,
                color: Colors.amber[100],
                child: const Center(child: Text('Entry C')),
              ),
              Container(
                height: 55,
                color: Colors.amber[100],
                child: const Center(child: Text('Entry C')),
              ),
              Container(
                height: 55,
                color: Colors.amber[100],
                child: const Center(child: Text('Entry C')),
              ),
              Container(
                height: 55,
                color: Colors.amber[100],
                child: Center(child: Text('Entry C')),
              ),
              Container(
                height: 55,
                color: Colors.amber[100],
                child: Center(child: Text('Entry C')),
              ),
            ],
          )),
    );
  }
}
