/* inheritance adalah sebuah konsep untuk menurunkan class kepada kelas lainnya
atau menurunkan class properti ataupun method pada suatu class kepada yg lainnya*/
void main() {
  print('----Mobil----');
  Mobil toyota = new Mobil(roda: 4);
  print(toyota.suaraklakson);
  toyota.jumlahRoda(toyota.roda);

  print('----Motor----');
  Motor mio = new Motor(roda: 2);
  mio.jumlahRoda(mio.roda);
}

class Kendaraan {
  String suaraklakson = 'tinnnnnn';

  void klakson() {
    print(suaraklakson);
  }

  void jumlahRoda(int roda) {
    print(roda);
  }
}

class Mobil extends Kendaraan {
  int roda;
  Mobil({this.roda = 0});

  @override
  void jumlahRoda(int roda) {
    print(
        'Jumlah Roda Mobil : $roda'); //sedangkan ini outputnya adalah Jumlah roda mobil : 4
    super.jumlahRoda(roda); //hasil outputnya adalah 4
  }
}

class Motor extends Kendaraan {
  int roda;
  Motor({this.roda = 0});

  @override
  void jumlahRoda(int roda) {
    print(
        'Jumlah Roda Motor : $roda'); //sedangkan ini outputnya adalah Jumlah roda motor : 2
    super.jumlahRoda(roda); //hasil outputnya adalah 2
  }
}
