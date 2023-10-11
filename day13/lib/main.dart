import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:day13/product.dart';

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
    var url="https://random-data-api.com/api/v2/addresses";

    var res= await dio.get(url);
    var myData=res.data;
    var product = Product.fromMap(myData);
    print(product.toMap());
    print(product.id);
    // setState((){
    // myData=res.data;
    // });
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
