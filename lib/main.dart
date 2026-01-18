import 'package:flutter/material.dart';
import 'package:instagram_clone/responsive_layout/mobile_screen_layout.dart';
import 'package:instagram_clone/responsive_layout/responsive_layout_screen.dart';
import 'package:instagram_clone/responsive_layout/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'instagram clone',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      home: ResponsiveLayout(
        webScreenLayout: WebScreenLayout(),
        mobileScreenLayout: MobileScreenLayout(),
      ),
    );
  }
}
