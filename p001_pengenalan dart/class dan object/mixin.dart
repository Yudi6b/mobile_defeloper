// mixin digunakan untuk mewariskan 2 method sekaligus

void main() {
  Kambing Kambing = new Kambing();
  Kambing.methodMamalia();
  Kambing.methodBerkakiEmpat();
  Kambing.methodSapi();
}

/*untuk mewariskan 2 method sekaligus tidak bisa hanya menggunakan kata class
karena mixin harus dideklarasikan sebagai mixin, bukan kelas biasa. maka class diganti menjadi mixin*/
mixin Mamalia {
  void methodMamalia() {
    print('Method Mamalia');
  }
}

mixin BerkakiEmpat {
  void methodBerkakiEmpat() {
    print('Method Berkaki Empat');
  }
}

// extand hanya dapat mewariskan satu method
// jika ingin memwariska lebih dari 2 method menggunakan with
class Kambing with Mamalia, BerkakiEmpat {
  void methodSapi() {
    print('Method Kambing');
  }
}
