import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailFilmTiga extends StatelessWidget {
  const DetailFilmTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Film Netflix'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            height: 40,
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  hintText: 'Rating 4.4',
                  border: InputBorder.none),
            ),
          ),
          Container(
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                    'images/gambar3.png',
                    width: 100,
                    height: 150,
                  ),
                  Text(
                    'Dear Nathan',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Icon(Icons.access_time_filled),
                  Text(
                    '1Jam 38Menit',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                        'Kisah cinta antara seorang remaja pembuat onar dan gadis pujaannya menghadapi ujian emosional ketika mantan si pria kembali untuk bermain dengan perasaannya. Untuk kelanjutan ceritanya silahkan nonton di Netflix'),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Text(
                    'Dibintangi: Amanda Rawles, Jefri Nichol, Rayn Wijaya',
                    style: TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  hintText: 'Disukai 8.807 Orang',
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
