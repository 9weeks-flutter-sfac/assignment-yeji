import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Day1 assignment'),
      ),
      body: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            children: <TextSpan>[
              TextSpan(
                text: '안녕하세요!\n간단하게 제 ',
                style:TextStyle(color: Colors.black,),
              ),
              TextSpan(
                text: '소개',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.lightBlue,
                ),
              ),
              TextSpan(
                text: '를 해보겠습니다\n\n먼저 저의 MBTI는',
                style:TextStyle(color: Colors.black,),
              ),
              TextSpan(
                text: 'ESTP',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
              TextSpan(
                text: '이고\n직업은 ',
                style:TextStyle(color: Colors.black,),
              ),
              TextSpan(
                text: '개발자',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
              TextSpan(
                text: '입니다.\n\n',
                style:TextStyle(color: Colors.black,),
              ),
              TextSpan(
                text: '꿈',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.amber,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.grey,
                  decorationThickness: 2.0,
                ),
              ),
              TextSpan(
                text: '은 없고요\n그냥 놀고 싶습니다\n\n',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.grey,
                  decorationThickness: 2.0,
                ),
              ),
              TextSpan(
                text: '감사합니다',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purpleAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}