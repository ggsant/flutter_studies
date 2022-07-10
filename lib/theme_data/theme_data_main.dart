import 'package:flutter/material.dart';
import 'package:flutter_studies/theme_data/home/home_page.dart';
import 'package:flutter_studies/theme_data/theme/config.dart';
import 'package:flutter_studies/theme_data/theme/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme data',
      home: const HomePage(),
      theme: CustomTheme.lightTheme, //3
      darkTheme: CustomTheme.darkTheme, //4
      themeMode: currentTheme.currentTheme, //5
    );
  }
}
