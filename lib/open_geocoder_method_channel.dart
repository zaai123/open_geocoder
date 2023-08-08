import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:open_geocoder/model/GeoData.dart';
import 'package:open_geocoder/model/geo_address.dart';
import 'package:open_geocoder/open_geocoder.dart';

import 'open_geocoder_platform_interface.dart';

/// An implementation of [OpenGeocoderPlatform] that uses method channels.
class MethodChannelOpenGeocoder extends OpenGeocoderPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('open_geocoder');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  static Future<List<GeoData>> getAddressList({required String name}) async {
    List<GeoData> addressesList =
        await OpenGeocoder.getAddressesWithName(name: name);
    return addressesList;
  }

  static Future<GeoLatLang?> getGeoLatLang(
      {required double latitude, required double longitude}) async {
    GeoLatLang? geoLatLang = await OpenGeocoder.getAddressWithLatLong(
        latitude: latitude, longitude: longitude);
    return geoLatLang;
  }
}
