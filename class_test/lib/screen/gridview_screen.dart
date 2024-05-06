import 'package:class_test/commonwidget/mybutton.dart';
import 'package:flutter/material.dart';


class GridViewScreen extends StatelessWidget {
  final String name = "PROSIYA";

  const GridViewScreen({super.key}); // Your name

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(name.length, (index) {
          return MyButton(
            text: name[index],
          );
        }),
      ),
    );
  }
}