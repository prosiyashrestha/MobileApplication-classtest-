
import 'package:first_app/screen/output_screen.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    required this.index,
    required this.imageName,
    super.key,
  });
  final int index;
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar( backgroundImage: AssetImage(imageName),) ,
      title: Text('Prosiya $index'),
      subtitle: const Text('Kathmandu, Nepal'),
      trailing: Wrap(
        spacing: 8,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
        ],
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return OutputScreen(
            title: '$index',
          );
        }));
      },
    );
  }
}