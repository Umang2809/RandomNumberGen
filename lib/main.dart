import 'package:flutter/material.dart';
import 'package:flutter_foundation/random_page.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Randomizer',
      home: RandomPage(),
    );
  }
}
