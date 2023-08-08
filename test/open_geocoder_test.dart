import 'package:flutter_test/flutter_test.dart';
import 'package:open_geocoder/open_geocoder.dart';
import 'package:open_geocoder/open_geocoder_platform_interface.dart';
import 'package:open_geocoder/open_geocoder_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOpenGeocoderPlatform
    with MockPlatformInterfaceMixin
    implements OpenGeocoderPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OpenGeocoderPlatform initialPlatform = OpenGeocoderPlatform.instance;

  test('$MethodChannelOpenGeocoder is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOpenGeocoder>());
  });

  test('getPlatformVersion', () async {
    OpenGeocoder openGeocoderPlugin = OpenGeocoder();
    MockOpenGeocoderPlatform fakePlatform = MockOpenGeocoderPlatform();
    OpenGeocoderPlatform.instance = fakePlatform;

    expect(await openGeocoderPlugin.getPlatformVersion(), '42');
  });
}
