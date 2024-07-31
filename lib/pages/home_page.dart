import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://i.pinimg.com/736x/be/ce/f1/becef15f288c12bf90e981a418d53f14.jpg'),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    offset: Offset(10, 10),
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Flutter Components',
              style: GoogleFonts.poppins(
                fontSize: 20,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              width: 160,
              child: Divider(),
            ),
            ItemComponentWidget(),
            ItemComponentWidget(),
          ],
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  const ItemComponentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 10,
              offset: Offset(4, 4),
            )
          ]),
      child: ListTile(
        leading: Icon(
          Icons.check_circle_outline,
          color: Color.fromARGB(255, 12, 130, 44),
        ),
        title: Text('Avatar', style: GoogleFonts.poppins()),
        subtitle:
            Text('Ir al detalle del avatar', style: GoogleFonts.poppins()),
        trailing: Icon(Icons.chevron_right, color: Colors.blue),
      ),
    );
  }
}
