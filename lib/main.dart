import 'package:flutter/material.dart';
import 'package:ifeanyi_agu_moniepoint_task/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Ysabeau"),
      home: const Homepage(),
    );
  }
}

const primarycolor = "0xff4AB299";
