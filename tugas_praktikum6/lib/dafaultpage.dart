import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DefaultPage extends StatefulWidget {
  const DefaultPage({super.key});

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: ListView(
        children: [
          Container(
            height: 70,
          ),
          Container(
            child: Card(
              color: Colors.red[100],
              child: Column(
                children: [
                  Text(
                    "BIODATA",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset(
                    'images/gambar1.jpg',
                    width: 100,
                    height: 150,
                  ),
                  Text(
                    'Radika Tripena Lubis',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Text(
                    'NPM : 2010631170110',
                    style: TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 16.0),
                  ),
                  Text(
                    'FASILKOM INFORMATIKA 20',
                    style: TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 16.0),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Text(
                    'Tanggal Lahir: 12 Juni 2002',
                    style: TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 16.0),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Text(
                    'Hallo, nama saya Radika Tripena Lubis, Saya mahasiswi Informatika UNSIKA semester 5. Saya asli orang Batak dari Medan :)Salam Kenal',
                    style: TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
