import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    botaoAction2() {
      Navigator.pushNamed(context, '/page1');
    }

    return Scaffold(
      body: Container(
        color: const Color(0XFF140E0E),
        child: Stack(
          children: [
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
              child: Column(
                children: [
                  SizedBox(
                    height: context.heightTransformer(reducedBy: 85),
                  ),
                  Image.asset('assets/logo.png'),
                  const SizedBox(
                    height: 60,
                  ),
                  //  Botao(
                  //      label: 'ACESSAR',
                  //      width: context.widthTransformer(reducedBy: 40),
                  //      height: 35,
                  //      onPressed: () {
                  //         navigator?.pushNamed('/home');
                  //       }),

                  ElevatedButton(
                    onPressed: botaoAction2,
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      primary: Color.fromARGB(255, 24, 146, 13),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        'Acessar',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
