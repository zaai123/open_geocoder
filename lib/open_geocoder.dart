import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
import 'package:open_geocoder/model/GeoData.dart';
import 'package:open_geocoder/model/geo_address.dart';

import 'open_geocoder_platform_interface.dart';

class OpenGeocoder {
   static const String _baseUrl = 'https://nominatim.openstreetmap.org/';

  Future<String?> getPlatformVersion() {
    return OpenGeocoderPlatform.instance.getPlatformVersion();
  }

  static Future<List<GeoData>> getAddressesWithName({required String name}) async {
    List<GeoData> addressesList = [];
    var response =
        await get(Uri.parse('${_baseUrl}search?q=$name&format=jsonv2'));
    if (response.statusCode == 200) {
      var jsonList = jsonDecode(response.body) as List;
      addressesList = jsonList.map((e) => GeoData.fromJson(e)).toList();
    } else {
      log(response.reasonPhrase!);
    }

    return addressesList;
  }

  static Future<GeoLatLang?> getAddressWithLatLong({required double latitude, required double longitude}) async{
    var response = await get(Uri.parse('${_baseUrl}reverse?lat=$latitude&lon=$longitude&format=jsonv2'));
    GeoLatLang? geoLatLang;
    if(response.statusCode == 200){
      var json = jsonDecode(response.body);
      geoLatLang = GeoLatLang.fromJson(json);
    }else{
      log(response.reasonPhrase!);
    }
    return geoLatLang;
  }
}
