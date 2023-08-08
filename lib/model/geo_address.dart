class GeoLatLang {
  String? placeId;
  String? lat;
  String? long;
  String? name;
  String? displayName;
  Address? address;

  GeoLatLang(
      {this.placeId,
      this.lat,
      this.long,
      this.name,
      this.displayName,
      this.address});

  factory GeoLatLang.fromJson(Map<String, dynamic> json) {
    var addressJson = json['address'];
    Address address = Address.fromJson(addressJson);
    return GeoLatLang(
        placeId: json['place_id'].toString(),
        displayName: json['display_name'],
        name: json['name'],
        lat: json['lat'].toString(),
        long: json['lon'].toString(),
        address: address);
  }
}

class Address {
  String? amenity;
  String? road;
  String? neighbourHood;
  String? town;
  String? country;
  String? countryCode;
  String? postalCode;
  String? state;
  String? stateDistrict;
  String? isoLvl6;
  String? isoLvl14;

  Address(
      {this.amenity,
      this.road,
      this.neighbourHood,
      this.town,
      this.country,
      this.countryCode,
      this.postalCode,
      this.state,
      this.stateDistrict,
      this.isoLvl6,
      this.isoLvl14});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
        amenity: json['amenity'].toString(),
        country: json['country'].toString(),
        countryCode: json['country_code'].toString(),
        isoLvl6: json['ISO3166-2-lvl6'].toString(),
        isoLvl14: json['ISO3166-2-lvl4'].toString(),
        neighbourHood: json['neighbourhood'].toString(),
        postalCode: json['postcode'].toString(),
        road: json['road'].toString(),
        state: json['state'].toString(),
        stateDistrict: json['state_district'].toString(),
        town: json['town'].toString());
  }
}
