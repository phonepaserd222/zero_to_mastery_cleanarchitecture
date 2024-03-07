import 'package:flutter/material.dart';

class FirstColumn extends StatelessWidget {
  const FirstColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("First Column child"),
      ),
    );
  }
}
