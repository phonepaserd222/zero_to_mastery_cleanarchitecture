import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../application/theme_service.dart';

class ButtonExample extends StatefulWidget {
  const ButtonExample({super.key});

  @override
  State<ButtonExample> createState() => _ButtonExampleState();
}

class _ButtonExampleState extends State<ButtonExample> {
  bool switchState = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          // style: ButtonStyle(
          //     backgroundColor:
          //         MaterialStateColor.resolveWith((states) => Colors.blue)),
          onLongPress: () {
            print("Long pressed");
          },
          onPressed: () {
            print("Textbutton pressed");
          },
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Text Button",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
        ),
        IconButton(
            onPressed: () {
              print("icon pressed");
            },
            icon: const Icon(Icons.play_arrow)),
        Switch(
          activeColor: Colors.green, // color switch icon  h vk
          inactiveThumbColor: Colors.amber, // color switch icon br h vk
          // inactiveTrackColor: Colors.red,       //color switch
          value: switchState,
          onChanged: (value) {
            setState(() {
              Provider.of<ThemeService>(context, listen: false).toggleTheme();
              switchState = value;
            });
            // switchState = value;
            print(value);
          },
        )
      ],
    );
  }
}
