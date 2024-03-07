import 'package:flutter/material.dart';

class BeerWarn extends StatelessWidget {
  const BeerWarn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: Image.asset(
            "assets/beer.jpeg",
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(
          top: 80,
          left: 20,
          child: Text("boi beerwarn"),
        ),
      ],
    );
  }
}
