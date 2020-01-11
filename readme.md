
# Dart Learn 101



<!-- TOC updateonsave:undefined -->

- [Dart Learn 101](#dart-learn-101)
    - [Print](#print)
    - [Variable](#variable)
        - [String](#string)
        - [Final Const Degismez Deger](#final-const-degismez-deger)
    - [if else](#if-else)
        - [Ternary Soru isareti kosulu](#ternary-soru-isareti-kosulu)
            - [Null degeri kontrol etme kosulu](#null-degeri-kontrol-etme-kosulu)
    - [Switch](#switch)
    - [Döngüler For While DoWhile](#döngüler-for-while-dowhile)
        - [For](#for)
        - [While](#while)
        - [Break Continue](#break-continue)
    - [Fonksiyonlar](#fonksiyonlar)
        - [Fat Arrow](#fat-arrow)
        - [Opsiyonel ve isimlendirilmis parametreler](#opsiyonel-ve-isimlendirilmis-parametreler)
            - [koseli parantez](#koseli-parantez)
            - [suslu parantez](#suslu-parantez)
            - [Null degere karsilik deger atama](#null-degere-karsilik-deger-atama)
    - [exception try catch finalyy tilda](#exception-try-catch-finalyy-tilda)
    
    - [Array Listler](#array-listler)
        - [Set yapisi](#set-yapisi)
        - [map yapisi](#map-yapisi)
        

<!-- /TOC -->



## Print
```dart
  print('tırnak\'lar ayrıldığında');
  print(8*4);
  print("fatih""emre");
  print("fatih"+"emre");
  //tırnak'lar ayrıldığında
  //32
  //fatihemre
  //fatihemre
```

## Variable 
- number, double, int  
- String
- boolen
- List (Array)
- Maps
- Runes (string karakterdeki unicode)
- Symbols
- Var (değerin durumuna göre kendi tanımlama yapar)
> Not: Tüm değişkenler object kabul edilir boş kalan tüm değerler "null" değeri alır. Kullanırken dikkat edilmelidir.

### String
```dart
String name= "fatih";
String lastName= "emre";
print(name +" "+ lastName);
print("İsim: $name $lastName");
print("Karakter : ${name.length}");
//fatih emre
//İsim: fatih emre
//Karakter : 5

int yas = 30;
print("yaş $yas yolun yarısı eder.");
print("yaş "+ yas.toString()+ " yolun yarısı eder.");
//yaş 30 yolun yarısı eder.
//yaş 30 yolun yarısı eder.
int x=10, y=3;
print("sayıların çarpımı: ${x*y}");
//sayıların çarpımı: 30

//Print: String başladığı için her şey string olması gerekir .toString();
```

### Final Const Degismez Deger
> **Final**: Kullanılmadıkça bellekte yer tutmaz. Türü isteğe bağlı<br> **Const**: Her daim yer tutar. **İnstance ise:** *****static const***** olarak kullanılır.

## if else

> && : **VE**<br><br>&nbsp;||&nbsp;&nbsp;&nbsp; :**VEYA**<br><br>&nbsp;&nbsp;!&nbsp;&nbsp;&nbsp; : **DEĞİL**

### Ternary Soru isareti kosulu

```dart
var x=10,y=30, z;
z= (x>y) ? "dogru" : "yanlış" ;
//yanlış
```

#### Null degeri kontrol etme kosulu
> İlk dolu olan içeriği değişkene atıyor.
```dart
var x,y="dolu değer", z;

z= x ?? y;
//dolu değer
```

## Switch
>Belli bir aralıktan oluşan koşullar için kullanışlı olabilir.
```dart
switch (degişken) {
  case "deger":
    //add ...
    break;
    case "deger":
    //add ...
    break;
  default:
    //add ...
}
```

## Döngüler For While DoWhile

### For
```dart
for (var i = 0; i < 10; i++) {
  print(i);
}

List isimler = ["fatih","emre","kalem"];
for (var name in isimler) {
  print(name);
}
```

### While

```dart
while (koşul) {
  // ...
}

// döngüden sonra kontrol eder.
do {
  //...
} while (koşul);
```

### Break Continue

```dart
for (var i = 0; i < 10; i++) {
  
  if (i>5) {
  print("i değeri: $i");  
  } else {
  print("Döngünün başına atladı: $i");
    continue;
  //altına yazılanları çalıştırmaz...
  }
}
//Döngünün başına atladı: 0
//Döngünün başına atladı: 1
//Döngünün başına atladı: 2
//Döngünün başına atladı: 3
//Döngünün başına atladı: 4
//Döngünün başına atladı: 5
//i değeri: 6
//i değeri: 7
//i değeri: 8
//i değeri: 9
```
----------
```dart

for (var i = 0; i < 10; i++) {
  
  if (i<5) {
  print("i değeri: $i");  
  } else {
  print("Durdu: $i");
  //Denk gelirse durur.
    break;
  
  }
}
//i değeri: 0
//i değeri: 1
//i değeri: 2
//i değeri: 3
//i değeri: 4
//Durdu: 5
```

## Fonksiyonlar

```dart
main(List<String> args) {
print(carp(5,10));  
}
int carp (int bir , int iki)
{
  return bir*iki;
}
//50
```

### Fat Arrow
> => değeriyle kullanılarak açılır. <br> **Asla süslü parantez almaz. Tek satır yazılır.**

```dart
main(List<String> args) {
print("Toplam: "+ topla(5,20).toString());  
}

int topla (int bir , int iki)=> bir+iki;
//25
```

### Opsiyonel ve isimlendirilmis parametreler
> Fonksiyona alınan parametrelerin ecma script benzer özellikle bir esnekliğe hakim. Boş girilen parametreler **"NULL"** degeri döndürür.<br> 
>- **"[int x ,string y]"** köşeli parentez <br>parantez içerisinde yer alan değer girilmesede fonksiyon çalışır.<br><br> 
>- **"{int x ,string y}"** süslü parantez <br>  parantez içerisinde yer alan parametrelerin sırası önemli olmamak kaydıyla değer kabul eder: **(parametre:value)** <br> <br>
>- **(int x=5,string="name")** koşula göre atanan değer

#### koseli parantez
```dart
main(List<String> args) {
deger(50); 
}
void deger (int sayi, [String  name,bool bayrak])
{
print("$sayi  $name  $bayrak");
}
//50  null  null
//50  fatih  null
```

#### suslu parantez
```dart
main(List<String> args) {
deger(50,name:"fatih",bayrak:false); 
}
void deger (int sayi, {String  name,bool bayrak})
{
print("$sayi  $name  $bayrak");
}
//50  fatih  false
```

#### Null degere karsilik deger atama
```dart
main(List<String> args) {
deger(50); 
}
void deger (int sayi, [String  name="emre",bool bayrak])
{
print("$sayi  $name  $bayrak");
}
//50  emre  null
//Koşul ataması için köşeli ya da süslü par. içinde olmalı.
```
## exception try catch finalyy tilda

 >İlerleyen zamanlarda kendi hata mesajları oluşturabilirsin.
 
> **try:** hata vermesi olası olan yapılarda kullanılır.<br>
**catch:** hata durumunda çalışan kısım genelde hata mesajı döndürülür.<br>
**finally:** hata olsun olmasın her daim çalışan kod bloğu.<br>
**tilda (~):** bazı hataları geçici bir şekilde engeller. <br>
**catch(e,stash):**<br> e: normal hatayı. <br>stash: detaylı hata sıra dizisini gösterir.
```dart
try {
  int sonuc= 12~/0;
  print(sonuc);
} catch (e,stash) {
  print("Hata: $e  $stash");
}
//Hata: IntegerDivisionByZeroException  #0   //   int.~/  (dart:core-patch///integers.dart:24:7)
//#1      main 
//variable.dart:5
//#2      _startIsolate.<anonymous closure>  //(dart:isolate-patch///isolate_patch.dart:305:32)
//#3      _RawReceivePortImpl._handleMessage // (dart:isolate-patch///isolate_patch.dart:174:12)
```

```dart
try {
  int sonuc= 12~/0;
  print(sonuc);
} catch (e,stash) {
  print("Hata: $e : $stash");
}
finally{
  print("her zaman çalışır");
}
//Hata: IntegerDivisionByZeroException : #0  //    int.~/  (dart:core-patch///integers.dart:24:7)
//#1      main 
//variable.dart:5
//#2      _startIsolate.<anonymous closure>  //(dart:isolate-patch///isolate_patch.dart:305:32)
//#3      _RawReceivePortImpl._handleMessage // (dart:isolate-patch///isolate_patch.dart:174:12)

//her zaman çalışır --FİNALLY
```

## Array Listler

> Arraylar iki türe ayrılır <br>
Sabit listeler ve Büyüyen listeler.
Büyüyen listeler veri eklemek sabit listelere göre biraz farklıdır. Verileri tanımlayabilmemiz için bazı methodlar kullanmamız gerekiyor bunlar.
>- **clear** : ne var ne yok temizler.
>- **remove**: verilen elamanı siler.
>- **removeAt** : belirtilen index verisini siler. <br>
>örneklerle bunları çoğaltabiliriz...

```dart
//Listlerin türleri belirtilerek oluşturulur.
List<int> sayilarSabit= List(5);
List<int> sayilarDinamik= List();
for (var sayi in sayilarSabit) {
  print(sayi);
}
//lambda
sayilarDinamik.forEach( (sayi)=> print(sayi) );

List <String> sehir = ["Denizli","Aydın","Muğla"];
sehir.add("Adana");
sehir.add("Ankara");
for (var il in sehir) {
  print(il);
}
//Denizli
//Aydın
//Muğla
//Adana
//Ankara
```

### Set yapisi

>List en önemli farkı birden çok aynı veriyi bir kere alması ve düzensiz sıralama yapması index yapısı olmadığı için. <br> Verilerin kontrolünü **contains** ile sağlanıyor.

```dart
Set<String> isim = Set();
isim.add("fatih");
isim.add("fatih");
isim.add("emre");
isim.add("emre");

isim.forEach((name)=>print(name));
//Listlerin bu türleri true false döndürebilir.
if(isim.contains("emre"))
print("vardır");
//fatih
//emre
//vardır
Set<int> numara= Set.from([1,2,3,4]);
print(numara);
//{1, 2, 3, 4}

//addAll herhangi liste içeriğini başka listeye eklemesini sağlar.
Set<int> rakam= Set();
rakam.addAll(numara);
print(rakam);
```
### map yapisi

> Yapı olarak set dizisiyle çok benzer yanları vardır. Fakat map ayıran özellik ise değerleri <br> **key:value**<br>olarak tutmasından geliyor. burası objede olabilir .json gibide düşünülebilir.

```dart
Map<String,Object>  kisi = Map();
kisi["ad"]="fatih";
kisi["yas"]=25;
kisi["erkemi"]=false;
for (var deger in kisi.values) {
  print(deger);
}
//fatih
//25
//false
for (var keys in kisi.keys)
print(keys);
//ad
//yas
//erkemi

// güncelleme nasıl yapılır.
kisi.update("ad",(value)=>"hasan");
print(kisi["ad"]);
//Hasan
```





### fafafaf