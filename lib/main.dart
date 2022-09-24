import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import './screens/Homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('ar', 'AE'), // English, no country code
        ],
        title: 'Electrical store',
        theme: ThemeData(
            textTheme:
                GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
            primaryColor: Color(0xFF219ebc),
            secondaryHeaderColor: Color(0xFFfcca46)),
        home: Homescreen());
  }
}
