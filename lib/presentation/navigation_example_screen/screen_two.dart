import 'package:flutter/material.dart';

import 'screen_one.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Screen Two"), backgroundColor: Colors.blue),
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenOne(),
                  ));
            },
            child: const Text("Go Back")),
      ),
    );
  }
}
