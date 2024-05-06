import 'package:first_app/screen/area_of_circle_screen.dart';
import 'package:first_app/screen/custom_widget_screen.dart';
import 'package:first_app/screen/flexible_expanded_screen.dart';
import 'package:first_app/screen/flutter_layout_screen.dart';
import 'package:first_app/screen/hello_world_screen.dart';
import 'package:first_app/screen/list_tile_screen.dart';
import 'package:first_app/screen/output_screen.dart';
import 'package:first_app/screen/star_screen.dart';
import 'package:first_app/screen/student_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StudentDetails(),
    );
  }
}