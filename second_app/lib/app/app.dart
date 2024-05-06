import 'package:flutter/material.dart';
import 'package:second_app/screen/simple_interest_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //themes
      home: SimpleInterest(),
    );
  }
}