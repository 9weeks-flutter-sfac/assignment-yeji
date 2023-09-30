import 'package:flutter/material.dart';
import 'package:day6/data.dart';

class Second extends StatelessWidget{
  const Second({super.key});

  Widget listview_builder(){
    return ListView.builder(
        scrollDirection: Axis.vertical,
        padding : EdgeInsets.all(5),
        itemCount: mathData.length,
        itemBuilder: (BuildContext context, int index){
          return Container(
            color:Colors.amber,
            child:Center(
              child: Text("${mathData[index]}"),
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title:'2번과제',
        home:Scaffold(
            appBar:AppBar(title:Text('2번과제')),
            body:Container(
                child: Expanded(
                  child: listview_builder(),
                )
            )
        )
    );
  }
}