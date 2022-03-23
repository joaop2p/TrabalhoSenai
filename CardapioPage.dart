import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class CardapioPage extends StatelessWidget {
  const CardapioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Image(
                  image: AssetImage('assets/drawer.png'),
                ),
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Menu Inicial'),
                leading: Icon(
                  Icons.home,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.assignment,
                ),
                title: Text('Cardápio'),
                onTap: () {
                  Navigator.pushNamed(context, '/CardapioPage');
                },
              ),
              ListTile(
                title: Text('Pedido'),
                leading: Icon(
                  Icons.shopping_basket,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Sair'),
                leading: Icon(
                  Icons.exit_to_app,
                ),
                onTap: () => exit(0),
              ),
            ],
          ),
        ),
        body: Column(children: <Widget>[
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
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page4');
              },
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(375, 50))),
              child: Center(
                child: Text('Bebidas'),
              ),
            ),
          ]),
          Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page5');
              },
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(375, 50))),
              child: Center(
                child: Text('Pratos executivos'),
              ),
            ),
          ]),
          Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page6');
              },
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(375, 50))),
              child: Center(
                child: Text('Pratos p/ 2 a 4 pessoas'),
              ),
            ),
          ]),
          Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page7');
              },
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(375, 50))),
              child: Center(
                child: Text('Porções'),
              ),
            ),
          ]),
          Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page8');
              },
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(375, 50))),
              child: Center(
                child: Text('Ensopados'),
              ),
            ),
          ]),
          Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page9');
              },
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(375, 50))),
              child: Center(
                child: Text('Bolinhos'),
              ),
            ),
          ]),
          Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page10');
              },
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(375, 50))),
              child: Center(
                child: Text('Espetos'),
              ),
            ),
          ]),
          Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page11');
              },
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(375, 50))),
              child: Center(
                child: Text('Petiscos'),
              ),
            ),
          ]),
          Spacer()
        ]),
      ),
    );
  }
}
