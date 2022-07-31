import 'package:flutter/material.dart';
import 'package:xpense/screens/homepage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      title: 'Xpense App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
