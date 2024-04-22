import 'package:dice_roller_app/dice_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[800],
        appBarTheme: AppBarTheme(
          color: Colors.indigo,
        ),
        cardTheme: CardTheme(color: Colors.indigo),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey,
        primaryColor: Colors.indigo,
        appBarTheme: AppBarTheme(
          color: Colors.red,
        ),
        cardTheme: CardTheme(
          color: Colors.red,
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
              color: Colors.grey[800],
              fontSize: 24,
              fontFamily: GoogleFonts.poppins().fontFamily),
        ),
      ),
      home: const DicePage(),
    );
  }
}
