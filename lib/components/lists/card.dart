import 'package:flutter/material.dart';

Card createCard(obj) {
  final String cardTitel = obj.name;
  final String sciName = obj.sciName;
  return Card(
      color: Colors.teal.shade200,
      child: ListTile(
        onTap: () {
          print('tabbed: ${cardTitel}');
        },
        onLongPress: () {
          print('pressed: ${cardTitel}');
        },
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
        ),
        title: Text(cardTitel),
        subtitle: Text(sciName,
            style: TextStyle(
              fontSize: 16,
            )),
        trailing: IconButton(
          icon: Icon(Icons.info_rounded, color: Colors.teal),
          onPressed: () {
            print('pressed');
            //Scaffold.of(context).openDrawer();
          },
        ),
      ));
}
