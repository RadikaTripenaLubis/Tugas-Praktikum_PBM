import 'package:tugas_praktikum7/details/merchandise.dart';
import 'package:flutter/foundation.dart';
import 'database.dart';

class StokProvider extends ChangeNotifier {
  late DatabaseHelper _dbHelper;

  List<Merchandise> cart = [];

  StokProvider() {
    _dbHelper = DatabaseHelper();
    listMerchandise();
  }

  void listMerchandise() async {
    cart = await _dbHelper.listMerchandise();
    notifyListeners();
  }

  Future<void> tambahMerchandise(Merchandise merchandise) async {
    await _dbHelper.tambahMerchandise(merchandise);
    listMerchandise();
  }

  Future<void> hapusMerchandise(int id) async {
    await _dbHelper.hapusMerchandise(id);
    listMerchandise();
  }

  Future<void> updateMerchandise(Merchandise merchandise) async {
    await _dbHelper.updateMerchandise(merchandise);
    listMerchandise();
  }
}
