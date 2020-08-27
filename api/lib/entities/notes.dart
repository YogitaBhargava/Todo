import 'package:flutter/foundation.dart';

class Note {
  String name;
  String capital;
  String region;
  String subregion;
  String demonym ;
  String nativeName;
  String numericCode;
  int population ;
  String topLevelDomain;

String flag;
String latlng;



  Note({ this.name, this.capital,this.region,this.subregion,this.demonym, this.nativeName, this.numericCode, this.population,this.topLevelDomain,this.flag,this.latlng});

  Note.fromJson(Map<String, dynamic> json){
    name = json["name"];
    capital = json["capital"];
    region =json["region"];
    subregion= json["subregion"];
    demonym= json["demonym"];
    numericCode= json["numericCode"];
population= json["population"];
topLevelDomain = json["topLevelDomain"] [0];
    flag=json['flag'];
latlng=json["latlng"][0][1];


    }
}