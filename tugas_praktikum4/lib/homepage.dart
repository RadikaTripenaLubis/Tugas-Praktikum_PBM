import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tugas_praktikum_empat/desainku.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        color: Colors.red,
        margin: EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Text(
              'Tugas PBM',
              style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
              textAlign: TextAlign.end,
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset("images/gambar.png"),
            SizedBox(
              height: 20,
            ),
            Text(
              "Rekomendasi Film Netflix",
              style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Designed by Radika Trivena Lubis",
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
              textAlign: TextAlign.center,
            ),
            Text(
              'Film berdasarkan Pendapat probadi',
              style: TextStyle(fontSize: 15, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 24.0,
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 5,
              height: 40,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8.0),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DesainKu(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.black,
                    ),
                  ),
                  child: const Text("Let's Go"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
