// class adalah sebuah template atau blueprint
// sedangkan object adalah hasil dari realisasi class/object nyata
// di dalam class terdapat atribut/properti dan method/function

void main() {
  RekeningBank rekeningYudi = new RekeningBank();
  rekeningYudi.namaPemilik = 'Elana Karisma';
  rekeningYudi.namaBank = 'BRI';
  rekeningYudi.saldo = 5000000;

  print(rekeningYudi.saldo);
  print(rekeningYudi.namaBank);
  print(rekeningYudi.namaPemilik);

  rekeningYudi.ceksaldo();

  // membuat objek baru
  RekeningBank rekeningYud = new RekeningBank(
      namaPemilik: 'Elana Karisma', namaBank: 'BNI', saldo: 90000000);

  print(rekeningYud.saldo);
  print(rekeningYud.ceksaldo());
  print(rekeningYud.namaBank);
  print(rekeningYud.namaPemilik);
}

class RekeningBank {
  var namaPemilik;
  var namaBank;
  var saldo;

  RekeningBank(
      {this.namaPemilik,
      this.namaBank,
      this.saldo}); //jika hanya dengan () objek saldonya harus diisi, sedangkan dengan menambahkan {} maka saldo menjadi optional

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
