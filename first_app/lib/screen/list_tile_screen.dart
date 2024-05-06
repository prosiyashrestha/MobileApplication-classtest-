
import 'package:first_app/commonwidget/listtile_widget.dart';
import 'package:flutter/material.dart';

class ListTileScreen extends StatefulWidget {
  const ListTileScreen({super.key, });

  @override
  State<ListTileScreen> createState() => _ListTileScreenState();
}

class _ListTileScreenState extends State<ListTileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: const Text ('List Title'),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 1; i <=50; i++) ...{
              if (i % 2 == 0) ...{
               ListTileWidget(index: i, imageName: 'assets/images/image_1.jpg',)
              }
              else...{

               ListTileWidget(index: i, imageName: 'assets/images/image_2.jpg',)
              }
            }
            
          ],
        ),
      )
      ); 
  
  }
}