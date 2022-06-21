import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screen1.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Shopping Cart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans().fontFamily,
      ),
      home: SplashScreen(),
    )
  );
}

