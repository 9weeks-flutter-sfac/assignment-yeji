import 'package:flutter/material.dart';
import 'package:day6/data.dart';

class First extends StatelessWidget{
  const First({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title:Text('1번과제')),
      body:Container(
        child: gridview(),
      )
    );
  }
}

class gridview extends StatelessWidget{
  const gridview({super.key});

  @override
  Widget build(BuildContext context){
    return GridView.builder(
      scrollDirection: Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4 //한줄에 4개씩
      ),
      itemCount: mathData.length,
      itemBuilder: (BuildContext context, int index){
        return Container(
          margin : EdgeInsets.all(10),
          decoration:BoxDecoration(
            color:Colors.amber,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color:Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0,3),  //x축:오른쪽,y축:아래
              )
            ]
          ),
          child:Center(
            child: Text("${mathData[index]}"),
          ),
        );
      }
  );
}
}