import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'open_geocoder_method_channel.dart';

abstract class OpenGeocoderPlatform extends PlatformInterface {
  /// Constructs a OpenGeocoderPlatform.
  OpenGeocoderPlatform() : super(token: _token);

  static final Object _token = Object();

  static OpenGeocoderPlatform _instance = MethodChannelOpenGeocoder();

  /// The default instance of [OpenGeocoderPlatform] to use.
  ///
  /// Defaults to [MethodChannelOpenGeocoder].
  static OpenGeocoderPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OpenGeocoderPlatform] when
  /// they register themselves.
  static set instance(OpenGeocoderPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
