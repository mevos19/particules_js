import 'package:flutter/material.dart';
import 'package:particules_js/particules_js.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Particules JS Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: ParticulesJs(
          height: size.height,
          width: size.width,
          connectDots: true,
          numberOfParticles: 100,
        ),
      ),
    );
  }
}
