//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <open_geocoder/open_geocoder_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) open_geocoder_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "OpenGeocoderPlugin");
  open_geocoder_plugin_register_with_registrar(open_geocoder_registrar);
}
