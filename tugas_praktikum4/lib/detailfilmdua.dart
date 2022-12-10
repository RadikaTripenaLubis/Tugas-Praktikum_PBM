import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailFilmDua extends StatelessWidget {
  const DetailFilmDua({super.key});

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
                  hintText: 'Rating 3.8',
                  border: InputBorder.none),
            ),
          ),
          Container(
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                    'images/gambar2.png',
                    width: 100,
                    height: 150,
                  ),
                  Text(
                    'Incantation',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Icon(Icons.access_time_filled),
                  Text(
                    '1Jam 51Menit',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                        'Enam tahun lalu, Li Ronan dikutuk setelah melanggar pantangan agama. Kini, ia harus melindungi putrinya dari beragam konsekuensi atas tindakan-tindakannya. Bagaima kelanjutannya? silahkan nonton di Netflix'),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Text(
                    'Dibintangi: Tsai Hsuan-yen, Huang Sin-ting, Kao Ying-hsuan',
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
                  hintText: 'Disukai 10.800 Orang',
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
