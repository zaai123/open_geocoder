#ifndef FLUTTER_PLUGIN_OPEN_GEOCODER_PLUGIN_H_
#define FLUTTER_PLUGIN_OPEN_GEOCODER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace open_geocoder {

class OpenGeocoderPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  OpenGeocoderPlugin();

  virtual ~OpenGeocoderPlugin();

  // Disallow copy and assign.
  OpenGeocoderPlugin(const OpenGeocoderPlugin&) = delete;
  OpenGeocoderPlugin& operator=(const OpenGeocoderPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace open_geocoder

#endif  // FLUTTER_PLUGIN_OPEN_GEOCODER_PLUGIN_H_
