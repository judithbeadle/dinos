import 'package:flutter/material.dart';
import 'dino.dart';
// import 'components/lists/card.dart';
import 'components/lists/tile.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lime),
      home: FabApp()));
}

class FabApp extends StatelessWidget {
  List<Dino> dinoNames = [
    Dino('Oskar', sciName: 'Brachiosaurus brancai (Giraffatitan)'),
    Dino('Diplodocus', sciName: 'Diplodocus carnegii'),
    Dino('Kentrosaurus', sciName: 'Kentrosaurus aethiopicus'),
    Dino('Dicraeosaurus', sciName: 'Dicraeosaurus hansemanni'),
    Dino('Elaphrosaurus', sciName: 'Elaphrosaurus bambergi'),
    Dino('Allosaurus', sciName: 'Allosaurus fragilis'),
    Dino('Pterodactylus', sciName: 'Pterodactylus kochi'),
    Dino('Pigeon', sciName: 'All pigeons are dinosaurs'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
          title: Text('Dinosaurs & You',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      drawer: Drawer(
        child: Container(
          color: Colors.lime,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(children: [
              Text('Text item 1'),
              Divider(),
              Text('Text item 2'),
              Divider(),
              Text('Text item 3'),
            ]),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1,
            ),
            itemCount: dinoNames.length,
            itemBuilder: (context, index) {
              return createTile(dinoNames[index]);
            }),

        // child: ListView.builder(
        //     itemCount: dinoNames.length,
        //     itemBuilder: (BuildContext context, int index) {
        //       return createCard(dinoNames[index]);
        //     }),
      ),
      // body: ListView.separated(
      //     itemCount: dinoNames.length,
      //     itemBuilder: (BuildContext context, int index) {
      //       return createCard(dinoNames[index]);
      //     },
      //     separatorBuilder: (BuildContext context, int index) => Divider()),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('open drawer');
            //Scaffold.of(context).openDrawer();
          }),
    );
  }
}
