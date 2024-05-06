import 'package:first_app/commonwidget/my_button.dart';
import 'package:first_app/commonwidget/my_snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({
    super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.loose,
              flex: 1,
              child: Container(
                // height: 200,
                width: double.infinity,
                color: Colors.pinkAccent,
                child: Center(child: MyButton(onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.green,
                      content: Text('Button 1'),
                      duration: Duration(seconds: 1),
                      behavior: SnackBarBehavior.floating,
                      )
                  );
                }, text: 'Click',)),
              ),
            ),
            Expanded(
              child: Container(
                // height: 200,
                width: double.infinity,
                color: Colors.redAccent,
                child: Center(child: MyButton(onPressed: () {
                 mySnackBar(message: "Button 2", context: context, color: Colors.red);
                }, text: 'Click',)),
              ),
            ),
          ],
        )
      ),
    );
  }
}