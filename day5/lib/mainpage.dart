import 'package:flutter/material.dart';
import '1.dart';
import '2.dart';
import '3.dart';

class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('5일차 과제'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondAssignment()));
              },
              child: Text('1번 과제'),
            ),
            SizedBox(height: 120),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThirdAssignment()));
              },
              child: Text('2번 과제'),
            ),
            SizedBox(height: 120),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FourthAssignment()));
              },
              child: Text('3번 과제'),
            ),
          ],
        ),
      ),
    );
  }
}