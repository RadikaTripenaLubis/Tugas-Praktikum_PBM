import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 54, 32, 93),
      body: Container(
        color: Color.fromARGB(255, 54, 32, 93),
        margin: EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Text(
              'Sweets',
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            Image.asset("images/gambar1.png"),
            Text(
              "Sweet App",
              style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            Text(
              "Designed by desainer For Sweet Lovers",
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            Text(
              'Sweet Lovers',
              style: TextStyle(fontSize: 15, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 24.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(16.0),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 54, 32, 93),
                    ),
                  ),
                  child: const Text("Skips"),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(16.0),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 234, 142, 142),
                    ),
                  ),
                  child: const Text("Get Started"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
