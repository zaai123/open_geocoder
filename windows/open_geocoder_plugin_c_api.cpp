#include "include/open_geocoder/open_geocoder_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "open_geocoder_plugin.h"

void OpenGeocoderPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  open_geocoder::OpenGeocoderPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
