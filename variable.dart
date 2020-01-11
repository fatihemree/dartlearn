main(List<String> args) {


Map<String,Object>  kisi = Map();
kisi["ad"]="fatih";
kisi["yas"]=25;
kisi["erkemi"]=false;
for (var deger in kisi.values)
  // print(deger);
  for (var keys in kisi.keys)
  print(keys);
kisi.update("ad",(value)=>"hasan");
print(kisi["ad"]);

}




