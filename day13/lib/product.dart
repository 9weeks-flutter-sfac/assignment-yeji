import 'dart:core';

class Product{
  int id;
  String uid;
  String city;
  String street_name;
  String street_address;
  String secondary_address;
  String building_number;
  String mail_box;
  String community;
  String zip_code;
  String zip;
  String postcode;
  String time_zone;
  String street_suffix;
  String city_suffix;
  String city_prefix;
  String state;
  String state_abbr;
  String country;
  String country_code;
  double latitude;
  double longitude;
  String full_address;

  Product({
    required this.id,
    required this.uid,
    required this.city,
    required this.street_name,
    required this.street_address,
    required this.secondary_address,
    required this.building_number,
    required this.mail_box,
    required this.community,
    required this.zip_code,
    required this.zip,
    required this.postcode,
    required this.time_zone,
    required this.street_suffix,
    required this.city_suffix,
    required this.city_prefix,
    required this.state,
    required this.state_abbr,
    required this.country,
    required this.country_code,
    required this.latitude,
    required this.longitude,
    required this.full_address,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'uid': this.uid,
      'city': this.city,
      'street_name': this.street_name,
      'street_address': this.street_address,
      'secondary_address': this.secondary_address,
      'building_number': this.building_number,
      'mail_box': this.mail_box,
      'community': this.community,
      'zip_code': this.zip_code,
      'zip': this.zip,
      'postcode': this.postcode,
      'time_zone': this.time_zone,
      'street_suffix': this.street_suffix,
      'city_suffix': this.city_suffix,
      'city_prefix': this.city_prefix,
      'state': this.state,
      'state_abbr': this.state_abbr,
      'country': this.country,
      'country_code': this.country_code,
      'latitude': this.latitude,
      'longitude': this.longitude,
      'full_address': this.full_address,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as int,
      uid: map['uid'] as String,
      city: map['city'] as String,
      street_name: map['street_name'] as String,
      street_address: map['street_address'] as String,
      secondary_address: map['secondary_address'] as String,
      building_number: map['building_number'] as String,
      mail_box: map['mail_box'] as String,
      community: map['community'] as String,
      zip_code: map['zip_code'] as String,
      zip: map['zip'] as String,
      postcode: map['postcode'] as String,
      time_zone: map['time_zone'] as String,
      street_suffix: map['street_suffix'] as String,
      city_suffix: map['city_suffix'] as String,
      city_prefix: map['city_prefix'] as String,
      state: map['state'] as String,
      state_abbr: map['state_abbr'] as String,
      country: map['country'] as String,
      country_code: map['country_code'] as String,
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
      full_address: map['full_address'] as String,
    );
  }
}