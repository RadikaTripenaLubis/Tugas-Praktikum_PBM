import 'package:flutter/material.dart';
import 'package:tugas_praktikum_tiga/page/halaman_satu.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        margin: EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Image.asset(
              "images/gambarr2.png",
            ),
            const SizedBox(
              height: 24.0,
            ),
            Text(
              'Winter',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              'Vacation Trips',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 24.0,
            ),
            Text(
              "Enjoy your winter vacations with warmth and amazing sightseeing on the mountains.",
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
              textAlign: TextAlign.start,
            ),
            Text(
              "Enjoy the best experience with us!",
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 24.0,
            ),
            SizedBox(
              width: 40,
              height: 50,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(16.0),
                ),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyHomePage(),
                        ));
                  },
                  label: const Text('Lets GO'),
                  icon: const Icon(Icons.arrow_right_alt_outlined),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
