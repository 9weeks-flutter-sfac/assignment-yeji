import 'dart:core';
import 'dart:convert';

class ApiData{
  String? name;
  String? age;
  String? runningtime;
  String? genre;
  int? rank;
  int? like;

//<editor-fold desc="Data Methods">
  ApiData({
    this.name,
    this.age,
    this.runningtime,
    this.genre,
    this.rank,
    this.like,
  });

  factory ApiData.fromMap(Map<String, dynamic> map) {
    int like=map['like']?? 0;
    int rank = map['rank']?? 0;
    return ApiData(
      name: map['name'] as String,
      age: map['age'] as String,
      runningtime: map['runningtime'] as String,
      genre: map['genre'] as String,
      rank: rank,
      like: like,
    );
  }
//</editor-fold>
}