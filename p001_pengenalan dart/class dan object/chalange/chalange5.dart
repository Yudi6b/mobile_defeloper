void main() {
  EWallet dompetYudi = new EWallet('Yudi');
  print('----Nilai Awal----');
  print(dompetYudi.getNama);
  print(dompetYudi.getSaldo);
  print(dompetYudi.getMutasi);
  print('----Request----');
  dompetYudi.Request(2000000);
  print(dompetYudi.getSaldo);
  print(dompetYudi.getMutasi);
  print('---- Transfer----');
  dompetYudi.transfer(500000);
  print(dompetYudi.getSaldo);
  print(dompetYudi.getMutasi);
}

class EWallet {
  String namaPemilik;
  int saldo = 0;
  List mutasi = [];

  get getNama {
    return namaPemilik;
  }

  get getSaldo {
    return saldo;
  }

  get getMutasi {
    return mutasi;
  }

  set setNama(String nama) {
    this.namaPemilik = nama;
  }

  set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }

  set setMutasi(List mutasi) {
    this.mutasi = mutasi;
  }

  EWallet(this.namaPemilik);

  transfer(int nominal) {
    saldo -= nominal;
    addMutasi('Transfer $nominal');
  }

  Request(int nominal) {
    saldo = saldo + nominal;
    addMutasi('Request $nominal');
  }

  addMutasi(String transaksi) {
    mutasi.add(transaksi);
  }
}
