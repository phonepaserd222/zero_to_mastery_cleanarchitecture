import 'package:flutter/material.dart';
import 'package:zero_to_mastery_cleanarchitecture/root_bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.green,
      )),
      // open & close debug banner
      // debugShowCheckedModeBanner: false,
      home: const RootBottomNavigation(),
    );
  }
}
