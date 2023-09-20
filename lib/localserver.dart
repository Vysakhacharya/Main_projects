import 'dart:convert' as convert;

import 'package:http/http.dart' as http;


class LocationService{
  final String key='AIzaSyBlMLndDiwg-yI7_Ltg0NG4J5bqN5g-f7g';

  Future<String> getPlaceId(String input)async{
    final String url=
        'https://maps.googleapis.com/maps/api/place/findplaceformattext/json?=input=$input&inputtype=textquery$key';
    var  response=await http.get(Uri.parse(url));


    var json= convert.jsonDecode(response.body);

    var placeId=json['candidatdes'][0]['place_id'] as String;

    print(placeId);

    return placeId;
  }

//Future<Map<String,dynamic>> getPlace(String input)async{}
}