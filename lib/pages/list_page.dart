import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<String> heroes = [
    'Batman',
    'Superman',
    'Wonder Woman',
    'Flash',
    'Aquaman',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Page'),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.builder(
        itemCount: heroes.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(heroes[index]),
            leading: CircleAvatar(
              child: Text(heroes[index][0]),
            ),
          );
        },
      ),
    );
  }
}
