import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("flutter Basic"),
        ),
        body: Center(
          child: Container(
            height: 200,
            decoration: const BoxDecoration(color: Colors.blue),
            child: const Center(
              child: Text(
                "hello world!",
                style: TextStyle(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold,
                  // fontStyle: FontStyle.italic, houb bb font
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint("clicked"),
          child: const Icon(Icons.ac_unit),
        ),
      ),
    );
  }
}
