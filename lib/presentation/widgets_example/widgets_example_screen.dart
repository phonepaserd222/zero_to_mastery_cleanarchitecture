import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_to_mastery_cleanarchitecture/application/theme_service.dart';
import 'package:zero_to_mastery_cleanarchitecture/presentation/components/custom_button.dart';
import 'package:zero_to_mastery_cleanarchitecture/presentation/widgets_example/widgets/button_example.dart';
import 'package:zero_to_mastery_cleanarchitecture/presentation/widgets_example/widgets/person.dart';

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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const RowExpandedExample(),
            const FirstColumn(),
            const ButtonExample(),

            const SizedBox(
              height: 20,
            ),
            const HelloWorld(),
            const SizedBox(
              height: 20,
            ),
            const Person(
              pictureUrl:
                  "https://scontent.fvte2-1.fna.fbcdn.net/v/t39.30808-1/367432797_249094054686779_8363083864096153828_n.jpg?stp=dst-jpg_p320x320&_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHFJ_q52Xk8FYGlrVtPoiQ1dR8cbW5NtMR1Hxxtbk20xJ78zDSQv8yHXr1n3nI7WsvzNuvjbHHUOdRwOElmChsw&_nc_ohc=YzYtDruY13AAX82oB6_&_nc_ht=scontent.fvte2-1.fna&oh=00_AfB1T528EFThTOogRX7nFm7MkgBguMznaLA2WaV5AMiunQ&oe=65FBE76E",
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
                    "https://scontent.fvte2-3.fna.fbcdn.net/v/t39.30808-6/314743292_108716195391233_340563914079872296_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeH-TEfrpd8c8KtOJO4UrQuvBgT0_w7kDTkGBPT_DuQNOUhuFNBkqUf_fyaPmCW_BmIbbWYNX6LvNpRIIbBODInJ&_nc_ohc=pGiV9cLfJkIAX-XFoXa&_nc_ht=scontent.fvte2-3.fna&oh=00_AfDozgTBNB2S7ru1fjLuAXqM0A95Z3bXZX2wl5sNWfBxXQ&oe=65FD2DDA",
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
                  Navigator.pushNamed(context, "/screenOne");
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => const ScreenTwo(),
                  //     ));
                },
                text: "text"),
            CustomButton(
              onTap: () {
                Navigator.pushNamed(context, "/screenTwo");
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const ScreenOne(),
                //     ));
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<ThemeService>(context, listen: false).toggleTheme();
        },
        child: const Icon(Icons.ac_unit),
      ),
    );
  }
}
