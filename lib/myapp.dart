import 'package:flutter/material.dart';
import 'package:portfolio/screen/home_screen.dart';
import 'package:portfolio/theme/theme.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLogin = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Portfolio",
      theme: theme(),
      home: const HomeScreen(),
    );
  }
}
