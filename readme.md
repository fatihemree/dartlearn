
# 1. Dart Learn 101
- [1. Dart Learn 101](#1-dart-learn-101)
  * [1.1. Print](#11-print)
  * [1.2. Variable](#12-variable)
    + [1.2.1. String](#121-string)
    + [1.2.2. Final & Const (Değişmez Değer)](#122-final---const--de-i-mez-de-er-)
  * [1.3. if else](#13-if-else)
    + [1.3.1. Ternary Soru isareti kosulu](#131-ternary-soru-isareti-kosulu)
      - [1.3.1.1. Null degeri kontrol etme kosulu](#1311-null-degeri-kontrol-etme-kosulu)
  * [1.4. Switch](#14-switch)
  * [1.5. Döngüler For While DoWhile](#15-d-ng-ler-for-while-dowhile)
    + [1.5.1. For](#151-for)
    + [1.5.2. While](#152-while)
    + [1.5.3. Break Continue](#153-break-continue)
  * [1.6. Fonksiyonlar](#16-fonksiyonlar)
    + [1.6.1. Fat Arrow](#161-fat-arrow)
    + [1.6.2. Opsiyonel ve isimlendirilmis parametreler](#162-opsiyonel-ve-isimlendirilmis-parametreler)
      - [1.6.2.1. koseli parantez](#1621-koseli-parantez)
      - [1.6.2.2. suslu parantez](#1622-suslu-parantez)
      - [1.6.2.3. Null degere karsilik deger atama](#1623-null-degere-karsilik-deger-atama)



## 1.1. Print
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

## 1.2. Variable 
- number, double, int  
- String
- boolen
- List (Array)
- Maps
- Runes (string karakterdeki unicode)
- Symbols
- Var (değerin durumuna göre kendi tanımlama yapar)
> Not: Tüm değişkenler object kabul edilir boş kalan tüm değerler "null" değeri alır. Kullanırken dikkat edilmelidir.

### 1.2.1. String
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

### 1.2.2. Final & Const (Değişmez Değer)
> **Final**: Kullanılmadıkça bellekte yer tutmaz. Türü isteğe bağlı<br> **Const**: Her daim yer tutar. **İnstance ise:** *****static const***** olarak kullanılır.

## 1.3. if else

> && : **VE**<br><br>&nbsp;||&nbsp;&nbsp;&nbsp; :**VEYA**<br><br>&nbsp;&nbsp;!&nbsp;&nbsp;&nbsp; : **DEĞİL**

### 1.3.1. Ternary Soru isareti kosulu

```dart
var x=10,y=30, z;
z= (x>y) ? "dogru" : "yanlış" ;
//yanlış
```

#### 1.3.1.1. Null degeri kontrol etme kosulu
> İlk dolu olan içeriği değişkene atıyor.
```dart
var x,y="dolu değer", z;

z= x ?? y;
//dolu değer
```

## 1.4. Switch
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

## 1.5. Döngüler For While DoWhile

### 1.5.1. For
```dart
for (var i = 0; i < 10; i++) {
  print(i);
}

List isimler = ["fatih","emre","kalem"];
for (var name in isimler) {
  print(name);
}
```

### 1.5.2. While

```dart
while (koşul) {
  // ...
}

// döngüden sonra kontrol eder.
do {
  //...
} while (koşul);
```

### 1.5.3. Break Continue

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

## 1.6. Fonksiyonlar

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

### 1.6.1. Fat Arrow
> => değeriyle kullanılarak açılır. <br> **Asla süslü parantez almaz. Tek satır yazılır.**

```dart
main(List<String> args) {
print("Toplam: "+ topla(5,20).toString());  
}

int topla (int bir , int iki)=> bir+iki;
//25
```

### 1.6.2. Opsiyonel ve isimlendirilmis parametreler
> Fonksiyona alınan parametrelerin ecma script benzer özellikle bir esnekliğe hakim. Boş girilen parametreler **"NULL"** degeri döndürür.<br> 
>- **"[int x ,string y]"** köşeli parentez <br>parantez içerisinde yer alan değer girilmesede fonksiyon çalışır.<br><br> 
>- **"{int x ,string y}"** süslü parantez <br>  parantez içerisinde yer alan parametrelerin sırası önemli olmamak kaydıyla değer kabul eder: **(parametre:value)** <br> <br>
>- **(int x=5,string="name")** koşula göre atanan değer

#### 1.6.2.1. koseli parantez
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

#### 1.6.2.2. suslu parantez
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

#### 1.6.2.3. Null degere karsilik deger atama
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




