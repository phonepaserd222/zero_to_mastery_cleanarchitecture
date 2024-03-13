import 'package:flutter/material.dart';
import 'package:zero_to_mastery_cleanarchitecture/presentation/components/custom_button.dart';
import 'package:zero_to_mastery_cleanarchitecture/presentation/navigation_example_screen/screen_one.dart';
import 'package:zero_to_mastery_cleanarchitecture/presentation/navigation_example_screen/screen_two.dart';
import 'package:zero_to_mastery_cleanarchitecture/presentation/widgets_example/widgets/button_example.dart';
import 'package:zero_to_mastery_cleanarchitecture/presentation/widgets_example/widgets/person.dart';

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
              const Person(
                pictureUrl:
                    "https://scontent.futh1-1.fna.fbcdn.net/v/t39.30808-6/367432797_249094054686779_8363083864096153828_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHFJ_q52Xk8FYGlrVtPoiQ1dR8cbW5NtMR1Hxxtbk20xJ78zDSQv8yHXr1n3nI7WsvzNuvjbHHUOdRwOElmChsw&_nc_ohc=PxTSqGQPz7EAX_xc-p4&_nc_ht=scontent.futh1-1.fna&oh=00_AfCeCFAYqxUUrPq62VVT-3xwLz9KHKivD7nVnRDb7nbbvA&oe=65F3FD6C",
                name: "Beerwarn",
                age: "25",
                country: "Laos",
                job: "DevFont",
              ),
              const SizedBox(
                height: 20,
              ),
              const Person(
                  pictureUrl:
                      "https://scontent.futh1-1.fna.fbcdn.net/v/t39.30808-6/426458602_3601813140060032_2523900165781806472_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFai8HRf8S4j8AMGr8tPdxd728NMjKabwLvbw0yMppvAmB4_GYY5cWdZcvnump_nhSaWBWHQi-jjXSPpsEqKooa&_nc_ohc=qu9Pn9CqPSsAX8dNdXv&_nc_ht=scontent.futh1-1.fna&oh=00_AfCeqe2i61AGKXWfTnkKD26BB6D5u-qKtBZYDI7gBrttTA&oe=65F35D3F",
                  name: "Boi",
                  age: "0.4",
                  country: "laos",
                  job: "king"),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ScreenTwo(),
                        ));
                  },
                  text: "text"),
              CustomButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScreenOne(),
                      ));
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
