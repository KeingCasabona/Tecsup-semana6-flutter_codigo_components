import 'package:flutter/material.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Grid Page'),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        childAspectRatio: 3,
        children: [
          Container(color: Colors.amber),
          Container(color: const Color.fromARGB(255, 7, 52, 255)),
          Container(color: const Color.fromARGB(255, 255, 7, 69)),
          Container(color: const Color.fromARGB(255, 81, 255, 7)),
          Container(color: Colors.amber),
          Container(color: const Color.fromARGB(255, 7, 52, 255)),
          Container(color: const Color.fromARGB(255, 255, 7, 69)),
          Container(color: const Color.fromARGB(255, 81, 255, 7)),
          Container(color: Colors.amber),
          Container(color: const Color.fromARGB(255, 7, 52, 255)),
          Container(color: const Color.fromARGB(255, 255, 7, 69)),
          Container(color: const Color.fromARGB(255, 81, 255, 7)),
          Container(color: Colors.amber),
          Container(color: const Color.fromARGB(255, 7, 52, 255)),
          Container(color: const Color.fromARGB(255, 255, 7, 69)),
          Container(color: const Color.fromARGB(255, 81, 255, 7)),
          Container(color: Colors.amber),
          Container(color: const Color.fromARGB(255, 7, 52, 255)),
          Container(color: const Color.fromARGB(255, 255, 7, 69)),
          Container(color: const Color.fromARGB(255, 81, 255, 7)),
          Container(color: Colors.amber),
          Container(color: const Color.fromARGB(255, 7, 52, 255)),
          Container(color: const Color.fromARGB(255, 255, 7, 69)),
          Container(color: const Color.fromARGB(255, 81, 255, 7)),
        ],
      ),
    );
  }
}
