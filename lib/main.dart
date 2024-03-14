import 'package:flutter/material.dart';
import 'package:zero_to_mastery_cleanarchitecture/presentation/navigation_example_screen/screen_one.dart';
import 'package:zero_to_mastery_cleanarchitecture/presentation/navigation_example_screen/screen_two.dart';
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
      routes: <String, WidgetBuilder>{
        "/root": (BuildContext context) => const RootBottomNavigation(),
        "/screenOne": (BuildContext context) => const ScreenOne(),
        "/screenTwo": (BuildContext context) => const ScreenTwo(),
      },
    );
  }
}
