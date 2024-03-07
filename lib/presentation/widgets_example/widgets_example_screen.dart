import 'package:flutter/material.dart';
import 'package:zero_to_mastery_cleanarchitecture/presentation/components/custom_button.dart';
import 'package:zero_to_mastery_cleanarchitecture/presentation/widgets_example/widgets/button_example.dart';

import 'widgets/beer_warn.dart';
import 'widgets/boi_beer_warn.dart';
import 'widgets/first_column.dart';
import 'widgets/hello_world.dart';
import 'widgets/layout_builder_example.dart';
import 'widgets/media_query_example.dart';
import 'widgets/row_expanded_example.dart';

class WidgetScreen extends StatelessWidget {
  const WidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flutter Basic"),
      ),
      body: Container(
        color: Colors.white,
        // height: 200,
        // width: 200,
        // decoration: BoxDecoration(
        //     color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const RowExpandedExample(),
              const FirstColumn(),
              const SizedBox(
                height: 20,
              ),
              const HelloWorld(),
              const SizedBox(
                height: 20,
              ),
              const BeerWarn(),
              const SizedBox(
                height: 20,
              ),
              const BoiBeerWarn(),
              const SizedBox(
                height: 40,
              ),
              const MediaQueryExample(),
              const SizedBox(
                height: 40,
              ),
              const LayoutBuilderExample(),
              //
              CustomButtonGesture(
                  onTap: () {
                    print("tapped text");
                  },
                  text: "text"),
              CustomButton(
                onTap: () {
                  print("tapped");
                },
                icon: Icons.home,
                iconColor: Colors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                  onTap: () {
                    print("tapped button2");
                  },
                  icon: Icons.play_arrow,
                  iconColor: Colors.blue),
              // SizedBox(
              //   height: 40,
              // ),
              const ButtonExample(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint("clicked"),
        child: const Icon(Icons.ac_unit),
      ),
    );
  }
}
