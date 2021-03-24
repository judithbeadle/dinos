import 'package:flutter/material.dart';

GridTile createTile(obj) {
  //final String imageSrc = obj.src;
  final String tileTitle = obj.name;
  final String tileSubtitle = obj.sciName;
  return GridTile(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
              fit: BoxFit.cover),
        ),
      ),
      footer: GridTileBar(
        backgroundColor: Colors.lime,
        title: Text('title'),
        subtitle: Text('subtitle'),
        trailing: IconButton(
          icon: Icon(Icons.info),
          onPressed: () {
            print('pressed from Tile');
          },
        ),
      ));
}
