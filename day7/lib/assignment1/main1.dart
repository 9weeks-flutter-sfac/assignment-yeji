import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'dog.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

//python zzang
class MyApp extends StatelessWidget{
  RefreshController _refreshController = RefreshController(initialRefresh : false);
  final currentUrlNotifier = ValueNotifier<String>(imageUrl[0]); // 초기 URL 설정

  void _onRefresh(urlList) async {
    await Future.delayed(Duration(milliseconds: 1000));
    currentUrlNotifier.value = urlList[Random().nextInt(urlList.length)]; // 랜덤 URL 선택
    _refreshController.refreshCompleted();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body : SmartRefresher(
          enablePullDown: true,
          enablePullUp: true,
          controller:_refreshController,
          onRefresh:()=>_onRefresh(imageUrl),
          header:WaterDropHeader(),
            child:Center(
              child: ValueListenableBuilder(
              valueListenable: currentUrlNotifier,
                builder: (context,String value, child){
                return ClipRRect(
                  borderRadius: BorderRadius.circular(50),//radius포기ㅡㅡ
                    child: Container(
                    decoration: BoxDecoration(
                      image:DecorationImage(
                        image: NetworkImage(value),
                        ),
                        ),
                    )
                );
              }
              ),
        )
      ),
    )
    );
  }
}
