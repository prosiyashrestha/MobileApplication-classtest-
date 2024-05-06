import 'package:flutter/material.dart';

class FlutterLayoutScreen extends StatelessWidget {
  const FlutterLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout"),
      ),
      body: Container(
        height: 50,
        // width: 200,
        decoration: BoxDecoration(
          color: Colors.pink[300],
          borderRadius: BorderRadius.circular(17)),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.phone),
                Text('Call'),
                
              ]
            ,),
            Column(
              children: [
                Icon(Icons.route),
                Text('Route'),
                
              ]
            ,),
            Column(
              children: [
                Icon(Icons.share),
                Text('Share'),
                
              ]
            ,),
          ],
        ),
      )
    );
  }
}