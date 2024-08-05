import 'package:flutter/material.dart';
import 'package:flutter_codigo_components/pages/alert_page.dart';
import 'package:flutter_codigo_components/pages/avatar_page.dart';
import 'package:flutter_codigo_components/pages/card_page.dart';
import 'package:flutter_codigo_components/pages/input_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical, //POR DEFECTO
        padding: EdgeInsets.only(bottom: 40),
        child: SafeArea(
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
              ItemComponentWidget(
                  title: 'Avatar',
                  subTitle: 'Ir al detalle del avatar',
                  toPage: AvatarPage()),
              ItemComponentWidget(
                title: 'Alert',
                subTitle: 'Ir al detalle del alert',
                toPage: AlertPage(),
              ),
              ItemComponentWidget(
                title: 'Cards',
                subTitle: 'Ir al detalle del card',
                toPage: CardPage(),
              ),
              ItemComponentWidget(
                title: 'Inputs',
                subTitle: 'Ir al detalle de los Inputs',
                toPage: InputPage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  ItemComponentWidget({
    required this.title,
    required this.subTitle,
    required this.toPage,
  });

  final String title;
  final String subTitle;
  final Widget toPage;
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
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => toPage));
        },
        leading: Icon(
          Icons.check_circle_outline,
          color: Color.fromARGB(255, 12, 130, 44),
        ),
        title: Text(title, style: GoogleFonts.poppins()),
        subtitle: Text(subTitle, style: GoogleFonts.poppins()),
        trailing: Icon(Icons.chevron_right, color: Colors.blue),
      ),
    );
  }
}
