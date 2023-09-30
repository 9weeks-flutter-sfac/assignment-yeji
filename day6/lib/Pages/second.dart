import 'package:flutter/material.dart';
import 'package:day6/data.dart';

class Second extends StatelessWidget{
  const Second({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(title:Text('2번과제')),
        body:Container(
          child: listview(),
        )
    );
  }
}

class listview extends StatelessWidget{
  const listview({super.key});

  @override
  Widget build(BuildContext context){
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: mathData.length,
        itemBuilder: (BuildContext context, int index) {
          return Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.all(5),
              width: (mathData[index] * 2).toDouble(),
              height: 24.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(90),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), //x축:오른쪽,y축:아래
                    )
                  ]
              ),
              child: Center(
                child: Text("${mathData[index]}"),
              ),
            ),
          );
        }
    );
  }
}