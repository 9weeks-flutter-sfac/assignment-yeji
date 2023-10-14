import 'package:day13/ListApi.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  getData() async{
    var dio=Dio();
    var url="https://api.tablebackend.com/v1/rows/pjPkbsARAUcT";

    Response res= await dio.get(url);
    print(ListApi.fromJson(res.data).toString());
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    getData();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
    );
  }
}
