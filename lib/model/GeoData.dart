class GeoData {
  String? placeId;
  String? latitude;
  String? longitude;
  String? displayName;
  String? category;

  GeoData(
      {this.placeId,
      this.latitude,
      this.longitude,
      this.displayName,
      this.category});

  factory GeoData.fromJson(Map<String, dynamic> json) {
    return GeoData(
        category: json['category'].toString(),
        displayName: json['display_name'].toString(),
        latitude: json['lat'].toString(),
        longitude: json['lon'].toString(),
        placeId: json['place_id'].toString());
  }
}
