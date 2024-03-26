import 'package:flutter/material.dart';

class ErrerMessage extends StatelessWidget {
  final String message;
  const ErrerMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      children: [
        const Icon(Icons.error, size: 40, color: Colors.redAccent),
        SizedBox(height: 20),
        Text(
          message,
          style: themeData.textTheme.displayLarge,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
