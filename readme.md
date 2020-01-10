# Dart Learn 101

1. [print()](#print)
1. [variable](#variable)


## print
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
```





