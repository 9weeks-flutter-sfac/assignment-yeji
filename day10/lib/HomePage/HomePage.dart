import 'package:day10/AuthorsPage/AuthorPage.dart';
import 'package:day10/SecretsPage/SecretsPage.dart';
import 'package:day10/UploadPage/UploadPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:secret_cat_sdk/secret_cat_sdk.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('assets/paw.png'),
                  backgroundColor: Colors.pinkAccent,
                ),
                Text(
                  "비밀 누설하는 고양이",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.all(15),),
            Container(
              color: Colors.white,
              width : MediaQuery.of(context).size.width*0.5,
              child:TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecretsPage()),
                  );                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '비밀보기',
                          style: TextStyle(
                            fontFamily: 'Neo',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '놀러가기',
                          style: TextStyle(
                            fontFamily: 'Neo',
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundImage:
                      AssetImage('assets/paw.png'),
                      backgroundColor: Colors.pinkAccent,
                      radius: 20,
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(15),),
            Container(
              color: Colors.white,
              width : MediaQuery.of(context).size.width*0.5,
              child:TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AuthorPage()),
                  );                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '작성자들보기',
                          style: TextStyle(
                            fontFamily: 'Neo',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '놀러가기',
                          style: TextStyle(
                            fontFamily: 'Neo',
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundImage:
                      AssetImage('assets/paw.png'),
                      backgroundColor: Colors.pinkAccent,
                      radius: 20,
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(15),),
            Container(
              width : MediaQuery.of(context).size.width*0.5,
              color: Colors.white,
              child:TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UploadPage()),
                  );                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '비밀공유',
                          style: TextStyle(
                            fontFamily: 'Neo',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '놀러가기',
                          style: TextStyle(
                            fontFamily: 'Neo',
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundImage:
                      AssetImage('assets/paw.png'),
                      backgroundColor: Colors.pinkAccent,
                      radius: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}