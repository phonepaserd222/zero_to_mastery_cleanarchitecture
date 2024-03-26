import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_to_mastery_cleanarchitecture/3_application/core/services/theme_service.dart';
import 'package:zero_to_mastery_cleanarchitecture/3_application/page/advice/widgets/advice_field.dart';
import 'package:zero_to_mastery_cleanarchitecture/3_application/page/advice/widgets/custom_button.dart';

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Advice",
          style: themeData.textTheme.headline1,
        ),
        centerTitle: true,
        actions: [
          Switch(
            value: Provider.of<ThemeService>(context).isDarkModeOn,
            onChanged: (_) {
              Provider.of<ThemeService>(context, listen: false).toggleTheme();
            },
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Center(
                  child: AdviceField(
                      advice: "example advice - your day will be good!"),
                  // CircularProgressIndicator(
                  //   color: themeData.colorScheme.secondary,
                  // ),
                ),
                // Text(
                //   "Your Advice is waiting for you!",
                //   style: themeData.textTheme.headline1,
                // ),
              ),
            ),
            SizedBox(height: 200, child: Center(child: CustomButton())),
          ],
        ),
      ),
    );
  }
}
