import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  int? p;
  int? r;
  int? t;
  int si = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text(
          'SIMPLE INTEREST',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                p = int.parse(value);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Principal',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                r = int.parse(value);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Rate of interest',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                t = int.parse(value);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Time',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                   if (p != null && r != null && t != null) {
                    si = (p! * r! * t! ~/ 100);
                  }
                });
              },
              child: const Text(
                'Calculate',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Simple Interest is : $si',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}