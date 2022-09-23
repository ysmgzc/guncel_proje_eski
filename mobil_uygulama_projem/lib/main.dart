import 'package:flutter/material.dart';

import 'login.dart';
import 'models/screen/splash/splash_screen.dart';

bool isFirst = true; 
void main() {
  runApp(MaterialApp(
    title: 'Hoşgeldiniz',
    debugShowCheckedModeBanner: false,
    theme: ThemeData( 
      backgroundColor: Colors.white,
    ),
    home: isFirst ? SplashScreen() : MyApp(),
  )
      
      );
}
