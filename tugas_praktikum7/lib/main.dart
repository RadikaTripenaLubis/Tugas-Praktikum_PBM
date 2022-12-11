import 'package:tugas_praktikum7/details/merchandise.dart';
import 'package:tugas_praktikum7/splash.dart';
import 'package:tugas_praktikum7/stok.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'stok_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StokProvider(),
      builder: (context, child) {
        return child!;
      },
      child: FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const MaterialApp(
              home: Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          }

          if (snapshot.data!.getBool('login') == null) {
            snapshot.data!.setBool('login', false);
          }

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: snapshot.data!.getBool('login') == true
                ? HomeScreen()
                : const Splash(),
          );
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Merchandise> listMerchandise = [
    Merchandise(
      name: 'Album EXO EX-Act',
      price: '400000',
    ),
    Merchandise(
      name: 'Lightstick EXO',
      price: '650000',
    ),
    Merchandise(
      name: 'Album Red Velvet QueenDom',
      price: '380000',
    ),
    Merchandise(
      name: 'Lightstick Red Velvet',
      price: '500000',
    ),
    Merchandise(
      name: 'Album NCT Dream Hot Sauce',
      price: '250000',
    ),
    Merchandise(
      name: 'Album NCT 127 Neo Zone',
      price: '355000',
    ),
    Merchandise(
      name: 'Lightstick NCT ',
      price: '750000',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 244, 148, 180),
        title: const Text('Halaman Merchandise'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: listMerchandise.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(listMerchandise[index].name),
            subtitle: Text('Rp. ${listMerchandise[index].price}'),
            onTap: () {},
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  color: Color.fromARGB(255, 244, 148, 180),
                  icon: const Icon(Icons.add),
                  onPressed: () async {
                    await context
                        .read<StokProvider>()
                        .tambahMerchandise(listMerchandise[index]);
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const Stok();
              },
            ),
          );
        },
        child: const Icon(Icons.arrow_forward),
        backgroundColor: Color.fromARGB(255, 244, 148, 180),
      ),
    );
  }
}
