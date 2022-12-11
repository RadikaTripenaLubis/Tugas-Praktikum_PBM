import 'package:tugas_praktikum7/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 148, 180),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: 200,
                  height: 200,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("img/SMTOWN.png"),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Administrator',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  width: 130,
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 121, 20, 0)),
                    onPressed: () async {
                      final prefs = await SharedPreferences.getInstance();
                      prefs.setBool('login', true).then(
                        (value) {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                      );
                    },
                    child: const Text('Login'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
