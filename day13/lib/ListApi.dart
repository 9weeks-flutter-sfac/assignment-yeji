import 'dart:core';
import 'dart:convert';
import 'package:day13/APIclass.dart';

//1~70번까지, mbti 16가지 전부 불러오기
class ListApi {
  List<ApiData>? Apis;
  int? page;
  int? count;
  int? perPage;

  //MbtiTest 클래스는 questions,mbtis라는 변수를 갖는다
  //==MbtiTest({List<Question>,Map<String,Mbti>})
  ListApi({this.Apis,this.page,this.count,this.perPage});

  //factory==static 유사
  factory ListApi.fromJson(Map<String, dynamic> jsonmap){
    List<ApiData> Apis=<ApiData>[];

    List <dynamic> apiList = jsonmap['data'];
    for (int i=0;i<apiList.length;i++) {
      Map<String,dynamic> api =apiList[i];
      Apis.add(ApiData.fromMap(api));
    }

    return ListApi(
      Apis:Apis,
      count:jsonmap['count'] as int,
      page: jsonmap['page'] as int,
      perPage: jsonmap['perPage'] as int,
    );
  }
}