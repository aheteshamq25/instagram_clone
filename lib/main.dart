import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/responsive_layout/mobile_screen_layout.dart';
import 'package:instagram_clone/responsive_layout/responsive_layout_screen.dart';
import 'package:instagram_clone/responsive_layout/web_screen_layout.dart';
import 'package:instagram_clone/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: 'AIzaSyBcURWd-1qJTCyuH1vr4Xwj3mm6gswCR5Y',
        appId: '1:502747988835:web:9c64f937f459483209c956',
        messagingSenderId: "502747988835",
        projectId: "instagram-clone-9ffde",
        storageBucket: "instagram-clone-9ffde.firebasestorage.app",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

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
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: ResponsiveLayout(
        webScreenLayout: WebScreenLayout(),
        mobileScreenLayout: MobileScreenLayout(),
      ),
    );
  }
}
