import 'package:flutter/material.dart';
import 'package:zero_to_mastery_cleanarchitecture/3_application/page/advice/widgets/errer_message.dart';

class AdviceField extends StatelessWidget {
  final String advice;
  const AdviceField({super.key, required this.advice});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Material(
      elevation: 20,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: themeData.colorScheme.onPrimary,
        ),
        child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: ErrerMessage(message: "ooops somethinggone wrong!")
            // Text(
            //   '''"$advice"''',
            //   style: themeData.textTheme.bodyLarge,
            //   textAlign: TextAlign.center,
            // ),
            ),
      ),
    );
  }
}
