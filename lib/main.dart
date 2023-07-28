import 'package:flutter/material.dart';
import 'package:responsive_app/home.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.deepPurple[300]!);
void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        textTheme: const TextTheme().copyWith(
          labelLarge: TextStyle(
            color: kColorScheme.onPrimary,
            fontSize: 24,
          ),
          labelMedium: TextStyle(
            color: kColorScheme.onPrimary,
            fontSize: 18,
          ),
          labelSmall: TextStyle(
            color: kColorScheme.onPrimary,
            fontSize: 16,
          ),
        ),
      ),
      home: const Home(),
    ),
  );
}
