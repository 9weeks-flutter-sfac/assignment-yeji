import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/secret_cat_sdk.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
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
                  ColorFilter.mode(Colors.black26, BlendMode.color))),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    controller: controller,
                    minLines: 7,
                    maxLines: 8,
                    decoration: InputDecoration(
                        filled: true, fillColor: Colors.white70),
                  ),
                  ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.pinkAccent)),
                      onPressed: () async {
                        if (controller.text != '') {
                          var secret =
                          await SecretCatApi.addSecret(controller.text);
                          if (secret != null) {
                            Navigator.pop(context);

                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                                    '고양이가 누설했습니다!! 메세지 :  ${secret.secret}')));
                          }
                        }
                      },
                      child: Text(
                        '고양이에게 속삭이기',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ))
                ]),
          ),
        ));
  }
}