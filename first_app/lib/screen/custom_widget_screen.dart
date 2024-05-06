import 'package:first_app/commonWidget/my_button.dart';
import 'package:first_app/commonwidget/my_text_form_field.dart';
import 'package:first_app/model/arithmetic_model.dart';
import 'package:flutter/material.dart';

class CustomWidgetScreen extends StatefulWidget {
  const CustomWidgetScreen({super.key});

  @override
  State<CustomWidgetScreen> createState() => _CustomWidgetScreenState();
}

class _CustomWidgetScreenState extends State<CustomWidgetScreen> {
  int? first;
  int? second;
  int? result=0;
  // String? address;
  // String? result;
  final formKey = GlobalKey<FormState>();
  final gap = const SizedBox(
    height: 8,
  );
  ArithmeticModel? arithematicModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Widget Screen"),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            MyTextFormField(
                onChanged: (value) {
                  setState(() {
                    first = int.parse(value);
                  });
                },
                text: "Enter your name"),
            gap,
            MyTextFormField(
                onChanged: (value) {
                  setState(() {
                    second = int.parse(value);
                  });
                },
                text: "Enter your Email"),
            gap,
            MyButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    setState(() {
                      {
                        arithematicModel =
                            ArithmeticModel(first: first!, second: second!);
                      }
                      result = arithematicModel!.add();
                    });
                  }
                },
                text: "Add"),
            Text('Sum is: $result',
                style: const TextStyle(
                  fontSize: 30,
                ))
          ],
        ),
      ),
    );
  }
}