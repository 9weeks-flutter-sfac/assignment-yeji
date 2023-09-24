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
      home: MyHomePage(title: '분식왕 이테디 주문하기'), // 홈 페이지 호출(title 매개변수로 전달)
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title; //앱 제목

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> order = []; //주문 리스트

  //음식 리스트
  final List<Map> foodList = [
    {'imgUrl': 'assets/option_bokki.png', 'name': '떡볶이'},
    {'imgUrl': 'assets/option_beer.png', 'name': '맥주'},
    {'imgUrl': 'assets/option_kimbap.png', 'name': '김밥'},
    {'imgUrl': 'assets/option_omurice.png', 'name': '오므라이스'},
    {'imgUrl': 'assets/option_pork_cutlets.png', 'name': '돈까스'},
    {'imgUrl': 'assets/option_ramen.png', 'name': '라면'},
    {'imgUrl': 'assets/option_udon.png', 'name': '우동'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //앱바
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true, //타이틀 글씨 가운데 정렬
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              '주문 리스트',
            ),
            Text(order.toString()),
            SizedBox(height: 8),
            Text(
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              '음식',
            ),
            Expanded(
              // 음식 리스트 그리드 뷰
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(foodList.length, (index) {
                  return GestureDetector(
                    onTap: () => setState(() {
                      order.add(foodList[index]['name']);
                    }),
                    // 하나의 음식 요소
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image(
                              image: AssetImage(
                                foodList[index]['imgUrl'],
                              ),
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            foodList[index]['name'].toString(),
                          ),
                          Text(
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            '[담기]',
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
      // 하단 버튼
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => setState(() {
          order.clear();
        }),
        label: Text('초기화하기'),
      ),
      // 하단 버튼 위치
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}