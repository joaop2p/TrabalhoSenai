import 'package:flutter/material.dart';

void main() => runApp(const drawer());

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(230, 211, 171, 2),
          centerTitle: true,
          title: Image(
            image: const AssetImage('assets/logo.png'),
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
                  Navigator.pop(context);
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
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        //body: ,
      ),
    );
  }
}
