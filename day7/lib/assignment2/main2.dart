import 'dart:async';
import 'package:flutter/material.dart';
import 'dog.dart'; // urlList가 정의된 파일을 import합니다.
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late PageController _pageController;
  late Timer _timer;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentPage);

    _timer = Timer.periodic(
      Duration(seconds: 2, milliseconds: 500), // 2.5 seconds
          (Timer timer) => _changePage(),
    );
  }

  void _changePage() {
    currentPage++;
    if (currentPage >= imageUrl.length) {
      currentPage = 0;
    }
    _pageController.animateToPage(
      currentPage,
      duration: Duration(milliseconds: 350),
      curve: Curves.easeIn,
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView.builder(
          controller: _pageController,
          itemCount: imageUrl.length,
          itemBuilder: (context, index) {
            return Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imageUrl[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: 200,
                  height: 200,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
