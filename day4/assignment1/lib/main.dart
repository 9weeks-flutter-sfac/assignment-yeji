import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // root Widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: '사칙연산'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;
  int x = 1;
  int y = 1;

  //사칙연산 결과 Dialog
  showResultDialog(BuildContext context, var result) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            height: 150,
            child: Center(
                child: Text(
                  "$result",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //앱바
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //x값 입력 필드
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Text('X의 값은?'),
                SizedBox(width: 50),
                SizedBox(
                  width: 200,
                  child: TextField(
                    onChanged: (value) {
                      x = int.parse(value);
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'x값을 입력하세요.',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Text('Y의 값은?'),
                SizedBox(width: 50),
                SizedBox(
                  width: 200,
                  child: TextField(
                    onChanged: (value) {
                      y = int.parse(value);
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'y값을 입력하세요.',
                    ),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showResultDialog(context, x + y);
            },
            child: Text('더하기의 결과값은?!'),
          ),
          ElevatedButton(
            onPressed: () {
              showResultDialog(context, x * y);
            },
            child: Text('곱하기의 결과값은?!'),
          ),
          ElevatedButton(
            onPressed: () {
              showResultDialog(context, x - y);
            },
            child: Text('빼기의 결과값은?!'),
          ),
          ElevatedButton(
            onPressed: () {
              showResultDialog(context, x / y);
            },
            child: Text('나누기의 결과값은?!'),
          ),
        ],
      ),
    );
  }
}