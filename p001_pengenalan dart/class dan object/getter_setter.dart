/* getter setter digunakan untuk menetapkan sebuah nilai pada properti
dan bisa diambil kembali nilainya*/

void main() {
  RekeningBank rekeningYudi = new RekeningBank();
  rekeningYudi namaPemilik = 'Yudi';
  rekeningYudi namaBank = 'BRI';
  rekeningYudi saldo = 5000000;

  print(rekeningYudi saldo);
  print(rekeningYudi namaBank);
  print(rekeningYudi namaPemilik);

  rekeningYudi.ceksaldo();
  print('-------------------------');

  // membuat objek baru
  RekeningBank rekeningYud = new RekeningBank(
      namaPemilik: 'Yudi', namaBank: 'BNI', saldo: 90000000);

  print(rekeningYud.namaPemilik);
  print(rekeningYud.namaBank);
  print(rekeningYud.saldo);
  rekeningYud.ceksaldo();
  print('---------------------');

  RekeningBank rekeningKaris = new RekeningBank(
    namaPemilik: 'Yudi',
    namaBank: 'Bank Syariah',
    saldo: 15000000,
  );

  print(rekeningKaris.getPemilik);
  print(rekeningKaris.getBank);
  print(rekeningKaris.saldo);
  rekeningKaris.setSaldo = 25000000;
  print(rekeningKaris.saldo);
  rekeningKaris.setNamaPemilik = 'Yudiii';
  rekeningKaris.setNamaBank = 'BCA';
  print(rekeningKaris.getPemilik);
  print(rekeningKaris.getBank);
  print(rekeningKaris.getSaldo);
}

class RekeningBank {
  var namaPemilik;
  var namaBank;
  int saldo;

  // membuat set getter setter
  set setNamaPemilik(var nama) {
    this.namaPemilik = nama;
  }

  set setNamaBank(String namabank) {
    this.namaBank = namabank;
  }

  set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }

  String get getPemilik {
    return namaPemilik;
  }

  String get getBank {
    return namaBank;
  }

  int get getSaldo {
    return saldo;
  }

  //jika hanya dengan () objek saldonya harus diisi, sedangkan dengan menambahkan {} maka saldo menjadi optional
  RekeningBank({this.namaPemilik, this.namaBank, this.saldo = 0});

  ceksaldo() {
    print('Saldo saat ini adalah : $saldo');
  }

  transfer() {
    print('Transfer ');
  }

  ambilsaldo() {
    print('ambil saldo');
  }
}
