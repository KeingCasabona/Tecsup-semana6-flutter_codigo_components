import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: Text(
          'Input Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              style: TextStyle(
                color: Colors.red,
                fontSize: 14,
              ),
              maxLines: 1,
              //textAlign: TextAlign.start, //POR DEFECTO AL INICIO
              decoration: InputDecoration(
                hintText: 'Direccion',
                hintStyle: TextStyle(
                  color: Colors.blue,
                ),
                label: Text('Direccion Label'),
                icon: Icon(Icons.location_on),
                suffixIcon: Icon(Icons.check_circle_outline),
                prefixIcon: Icon(Icons.star),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Buscar producto',
                prefixIcon: Icon(Icons.search),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurpleAccent,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onChanged: (String value) {
                print(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
