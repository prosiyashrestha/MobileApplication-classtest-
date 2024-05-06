import 'package:flutter/material.dart';
import 'package:student_management/model/student_detail_model.dart';

class MyCard extends StatelessWidget {
   MyCard({super.key});

  List<Student> students = [];

  @override
  Widget build(BuildContext context) {
    return Card(
                        color: Colors.amber,
                        child: Column(
                          children: [
                            Center(child: Text(students[index].fname),
                            ),
                            Center(child: Text(students[index].lname),
                            ),
                          ],
                        ),
                      );
  }
}