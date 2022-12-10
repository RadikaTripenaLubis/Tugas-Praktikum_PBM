import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tugas_praktikum_enam/dafaultpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Future<SharedPreferences> _preference = SharedPreferences.getInstance();
  bool _isBool = false;

  void _Boolean() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _isBool = !_isBool;
      if (_isBool == true) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DefaultPage(),
        ));
        print("Anda berhasil diarahkan ke halaman Default");
        print(_isBool);
      } else {
        print("Yahhh Gagall");
        print(_isBool);
      }
    });
    prefs.setBool('isbool', _isBool);
  }

  _getBool() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _isBool = prefs.getBool('isbool') ?? _isBool;
      if (_isBool == true) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DefaultPage(),
        ));
        print(_isBool);
        print("Anda sudah Berhasil Masuk");
      } else {
        print(_isBool);
        print("Masih gagal");
      }
    });
  }

  void initState() {
    super.initState();
    _getBool();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Selamat datang di halaman saya",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Halaman ini berisi Biodata saya, Silahkan Masuk :)',
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: _Boolean, child: const Text('Masuk')),
            ],
          ),
        ),
      ),
    );
  }
}
