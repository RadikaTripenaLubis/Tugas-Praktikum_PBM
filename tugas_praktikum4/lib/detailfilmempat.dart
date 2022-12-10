import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailFilmEmpat extends StatelessWidget {
  const DetailFilmEmpat({super.key});

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
                  hintText: 'Rating 4.5',
                  border: InputBorder.none),
            ),
          ),
          Container(
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                    'images/gambar4.png',
                    width: 100,
                    height: 150,
                  ),
                  Text(
                    'The Call',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Icon(Icons.access_time_filled),
                  Text(
                    '1Jam 25Menit',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                        'Terhubung lewat telepon di rumah yang sama tetapi terpisah 20 tahun, pembunuh berantai mempertaruhkan masa lalu sekaligus nyawa seorang wanita lagi demi mengubah nasib. Apa yang akan terjadi? silahkan nonton di Netflix'),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Text(
                    'Dibintangi: Park Shin-hye, Jun Jong-seo, Kim Sung-ryoung',
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
                  hintText: 'Disukai 13.800 Orang',
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
