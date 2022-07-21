import 'package:flutter/material.dart';
import 'package:itunu_oluwa/mypage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my work space',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyPage(),
    );
  }
}

