import 'package:flutter/material.dart';
import 'package:day6/Pages/first.dart';
import 'package:day6/Pages/second.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  //StatelessWidget에 key라는 변수
  //생성자 안에 매개변수로 optional에 들어오는 첫번째 데이터는 StatelessWidget에 있는 key에 집어넣음
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Home")),
      body: Center(
        child : Column(
          children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue,
                onPrimary: Colors.white,
              ),
              onPressed : (){
                //first.dart로 이동
                //(객체.함수)->객체((객체.함수)->return 객체).함수()
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>First()
                  )
                );
              },
              child: Text('1번과제')),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue,
                onPrimary: Colors.white,
              ),
              onPressed : (){
                //first.dart로 이동
                //(객체.함수)->객체((객체.함수)->return 객체).함수()
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>Second()
                )
                );
              },
              child: Text('2번과제')),
      ],
        )
    ),
    );
  }
}