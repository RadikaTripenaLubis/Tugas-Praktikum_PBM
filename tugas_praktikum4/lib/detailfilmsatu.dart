import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailFilmSatu extends StatelessWidget {
  const DetailFilmSatu({super.key});

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
                  hintText: 'Rating 4.8',
                  border: InputBorder.none),
            ),
          ),
          Container(
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                    'images/gambar1.png',
                    width: 100,
                    height: 150,
                  ),
                  Text(
                    '20th century girl',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Icon(Icons.access_time_filled),
                  Text(
                    '2Jam 1Menit',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                        'Pada 1999, seorang gadis remaja memerhatikan seorang pria di sekolah demi sahabatnya yang terpesona. Lalu, ia sendiri juga jatuh cinta pada pria yang sama. Namun, Kisah cintanya tidak berjalan mulus, Untuk kelanjutan ceritanya silahkan nonton di Netflix'),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Text(
                    'Dibintangi: Kim You-jung, Byeon Woo-seok, Park Jung-woo',
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
                  hintText: 'Disukai 18.800 Orang',
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
