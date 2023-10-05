import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

class SecretsPage extends StatelessWidget {
  const SecretsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('뒤로가기'),
        centerTitle: false,
        elevation: 0,
      ),
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/cat.jpg'),
                  fit: BoxFit.cover,
                  colorFilter:
                  ColorFilter.mode(Colors.black54, BlendMode.darken))),
          child: FutureBuilder(
            future: SecretCatApi.fetchSecrets(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // var newList = snapshot.data!.reversed.toList();
                return PageView.builder(
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) {
                      return ZoomIn(
                        duration: Duration(milliseconds: 2000),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("고양이가 누설합니다ㅏㅇ아앜!",
                              textAlign: TextAlign.center,
                              style:TextStyle(color: Colors.white, fontSize: 20),),
                            Image(
                                height: 45,
                                color: Colors.white,
                                image: AssetImage(
                                    'assets/paw.png')),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                snapshot.data![index].secret,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            ),
                            Text(
                              snapshot.data![index].author?.username ?? "익명",
                              textAlign: TextAlign.center,
                              style:
                              TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      );
                    });
              }
              return CircularProgressIndicator();
            },
          )),
    );
  }
}