main(List<String> args) {
var tekir = Kedi();
canli(tekir); // yukari çevrim upcasting

}
class Hayvan {
  void uyuyor(){
    print("Dinleniyor");
  }
  void yemekYe(){
    print("yemek yiyor");
  }
}
void canli(Hayvan alive) {
alive.yemekYe();
alive.uyuyor();
}
class Kedi extends Hayvan{
  void sesler(){
    print("meow");
  }
   @override
  void yemekYe() {
    print("kedi besin alıyor");
  } 
}
class Kopek extends Hayvan {
   void sesler(){
    print("hav hav");
  }
}


