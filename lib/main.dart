import 'package:AStore/pages/sign_in_page.dart';
import 'package:AStore/pages/splash_page.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' :(context) => SplashPage(),
        '/sign-in' : (context) => SignInPage()
      },
    );
  }
}

