void main() {
  // membuat list dengan var yang sifatnya dinamik
  var mahasiswa = ['Lala', 'Lili', 'Lulu'];

  // membuat list yang hanya bisa menginputkan list
  List mahasiswa2 = ['Lala', 'Lili', 'Lulu'];

  // membuat list yang hanya bisa menginputkan list yang bertipe string
  // Jika yang diinputkan selain dari string, maka akan terjadi error
  List<String> mahasiswa3 = ['Lala', 'Lili', 'Lulu'];

  // membuat list yang hanya bisa menginputkan list yang bertipe string
  List<dynamic> mahasiswa4 = ['Lala', 'Lili', 'Lulu'];

  print(mahasiswa);
  print(mahasiswa2);
  print(mahasiswa3);
  print(mahasiswa4);



  // List dimulai dari index 0
  // Untuk menampilkan index tertentu dari suatu list
  print(mahasiswa3[2]);
  // Untuk mengetahui nilai dari index tertentu
  print(mahasiswa3.elementAt(1));

  // Untuk mengetahui panjang list
  print(mahasiswa3.length);

  // Untuk menambahkan nilai pada suatu list
  mahasiswa3.add('Rizki');
  print(mahasiswa3);

  // Untuk menambahkan list pada list
  List<String> mahasiswaTambahan = ['Sobirin', 'Agung'];
  mahasiswa3.addAll(mahasiswaTambahan);
  print(mahasiswa3);

  // Mengurutkan List berdasarkan abjad
  mahasiswa3.sort();
  print(mahasiswa3); 

  // Mengurutkan dari belakang / ditebalikkan
  List<String> mahasiswaNew = mahasiswa3.reversed.toList();
  print(mahasiswaNew); 

  // Untuk menghapus list
  mahasiswa4.clear();
  print(mahasiswa4);  
}
