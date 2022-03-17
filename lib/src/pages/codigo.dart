import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:tcc/src/pages/Qr.code.dart';

class CodigoPage extends StatefulWidget {
  const CodigoPage({Key? key}) : super(key: key);

  @override
  State<CodigoPage> createState() => _CodigoPageState();
}

class _CodigoPageState extends State<CodigoPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0XFF140E0E),
        child: Stack(children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: context.width,
              child: Image.asset(
                'assets/fundo2.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(children: [
              SizedBox(
                height: context.heightTransformer(reducedBy: 85),
              ),
              Image.asset('assets/logo.png'),
              const SizedBox(
                height: 60,
              ),
              Padding(
                //Add padding around textfield
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderSide:
                          const BorderSide(color: Colors.green, width: 2.0),
                    ),
                    //Add th Hint text here.
                    labelText: "Insira o Código",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Center(
                  child: Padding(
                padding: EdgeInsets.all(20.0),
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QRCodePage()),
                    );
                  },
                  child: new Icon(
                    Icons.send,
                    color: Colors.green,
                    size: 25.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              )),
            ]),
          ),
        ]),
      ),
    );
  }
}
