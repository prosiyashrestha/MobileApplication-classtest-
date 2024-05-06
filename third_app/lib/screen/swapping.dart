import 'package:flutter/material.dart';

class SwapNumbers extends StatefulWidget {
  const SwapNumbers({super.key});

  @override
  State<SwapNumbers> createState() => _SwapNumbersState();
}

class _SwapNumbersState extends State<SwapNumbers> {
  int? first;
  int? second;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text(
          'Swapping Two Numbers',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                first = int.parse(value);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter first number',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                second = int.parse(value);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Second number',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  first = first! + second!;
                  second = first! - second!;
                  first = first! - second!;
                });
              },
              child: const Text('Swap'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text('Numbers After Swap',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'First number: $first, Second number: $second ',
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}