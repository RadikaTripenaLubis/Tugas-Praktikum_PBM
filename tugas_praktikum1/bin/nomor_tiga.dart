void main() {
  //Membuat List
  print('=>List');
  List<String> namaMhs = [];
  namaMhs.add('Exo Kai');
  namaMhs.add('Nanami');
  namaMhs.add('Rayanza');
  namaMhs.add('Inumaki');

  var tinggi = [182, 184, 170, 173.6];
  print(namaMhs);
  print(tinggi);

  //melihat panjang list
  print(namaMhs.length);
  print(tinggi.length);
  //Mengakses list berdasarkan index
  print(namaMhs[2]);
  print(tinggi[0]);
  //Mengubah data dalam index
  namaMhs[2] = 'Rafatar';
  print(namaMhs[2]);
  //Menghapus
  tinggi.removeAt(1);
  print(tinggi);

  //membuat Map
  print('\n=>Map');
  Map<int, String> contohMap = {};
  contohMap[1] = 'RadikaLubis';
  contohMap[2] = 'Suho';
  contohMap[3] = 'LayZhang';
  print(contohMap);
  //melihat panjang Map
  print(contohMap.length);
  //Mengakses list berdasarkan index
  print(contohMap[2]);
  //mengubah data
  contohMap[2] = 'Chen';
  print(contohMap);
  //Menghapus
  contohMap.remove(1);
  print(contohMap);

  //Membuat Set
  print('\n=>Set');
  Set<int> contohSet = {};
  contohSet.add(2000);
  contohSet.add(2015);
  contohSet.add(2020);
  contohSet.add(2025);
  contohSet.add(2030);
  print(contohSet);

  var namanya = <String>{'Tahun', 'Year'};
  print(namanya);
  //melihat panjang Set
  print(contohSet.length);
  print(namanya.length);
  //menghapus
  contohSet.remove(2020);
  print(contohSet);
}
