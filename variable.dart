main(List<String> args) {
  Ogrenci ybs = Ogrenci("fatih", 50, 50, true);
  ybs.vizeGuncelle = -50;
  print(ybs.vizeNot);
//print(ybs.ortalama);
}

class Ogrenci {
  String ad;
  int vizeNot;
  int finalNot;
  bool gectiMi;
  Ogrenci(this.ad, this.vizeNot, this.finalNot, this.gectiMi) {}

  void set vizeGuncelle(int not) {
    this.vizeNot = (not < 0) ? 1 : not;
  }

  double get ortalama => (this.vizeNot * 0.4) + (this.finalNot * 0.6);
}
