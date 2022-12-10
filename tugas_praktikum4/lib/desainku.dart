import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tugas_praktikum_empat/detailfilmdua.dart';
import 'package:tugas_praktikum_empat/detailfilmempat.dart';
import 'package:tugas_praktikum_empat/detailfilmsatu.dart';
import 'package:tugas_praktikum_empat/detailfilmtiga.dart';

class DesainKu extends StatelessWidget {
  const DesainKu({super.key});

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
            height: 150,
            child: Card(
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailFilmSatu(),
                            ));
                      },
                      child: Image.asset(
                        'images/gambar1.png',
                        width: 100,
                        height: 150,
                      )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('20th century girl'),
                        Text('Tahun Rilis: 2022'),
                        Text('Genre: Melodrama, Romansa'),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            child: Card(
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailFilmDua(),
                            ));
                      },
                      child: Image.asset(
                        'images/gambar2.png',
                        width: 100,
                        height: 150,
                      )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Incantation'),
                        Text('Tahun Rilis: 2022'),
                        Text('Genre: Horor'),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            child: Card(
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailFilmTiga(),
                            ));
                      },
                      child: Image.asset(
                        'images/gambar3.png',
                        width: 100,
                        height: 150,
                      )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Dear Nathan'),
                        Text('Tahun Rilis: 2017'),
                        Text('Genre: Romance'),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            child: Card(
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailFilmEmpat(),
                            ));
                      },
                      child: Image.asset(
                        'images/gambar4.png',
                        width: 100,
                        height: 150,
                      )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('The Call'),
                        Text('Tahun Rilis: 2020'),
                        Text('Genre: Thriller'),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
