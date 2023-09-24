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
            body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('오늘의 하루는', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  Text('어땠나요?', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),

                  Container(
                    width: 200,
                    height: 100,
                    child: PageView(
                        children : [
                          SizedBox.expand(
                            child: Container(
                              child: Center(
                                  child: Text(
                                    '행복', style: TextStyle(fontFamily: 'Sunflower', color: Colors.white, fontSize: 23),
                                  )
                              ),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.orange,
                                    Colors.yellow,
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox.expand(
                              child: Container(
                                child: Center(
                                    child: Text(
                                      '우울', style: TextStyle(fontFamily: 'Sunflower', color: Colors.white, fontSize: 23),
                                    )
                                ),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Colors.black,
                                      Colors.white,
                                    ],
                                  ),
                                ),
                              )
                          ),
                          SizedBox.expand(
                              child: Container(
                                child: Center(
                                    child: Text(
                                      '지금 지쳤나요?', style: TextStyle(fontFamily: 'Sunflower', color: Colors.white, fontSize: 23),
                                    )
                                ),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Colors.blue,
                                      Colors.green,
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ]
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    clipBehavior: Clip.antiAlias,
                  ),

                  Divider(),

                  Container(
                    height: 80,
                    decoration: BoxDecoration(color: Colors.blue ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: CircleAvatar(
                              radius: 28,
                              backgroundImage: NetworkImage('https://d2u3dcdbebyaiu.cloudfront.net/uploads/atch_img/678/25404daf10e3d1b6926e86dcbc3463b8_res.jpeg')
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('한예지', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400),),
                              Text('AI개발', style: TextStyle(color: Colors.white, fontSize: 12),),
                              Text('python, Pycharm', style: TextStyle(color: Colors.white, fontSize: 12),),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Icon(Icons.add,
                                   color:Colors.white,
                            ),
                        ),
                      ],
                    ),
                  )
                ]
            )
        )
    );
  }
}