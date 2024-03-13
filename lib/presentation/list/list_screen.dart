import 'package:flutter/material.dart';
import 'package:zero_to_mastery_cleanarchitecture/presentation/list/widgets/list_item.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> example = ["example", "list", "with", "strings"];

    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView Example"),
        ),
        body: ListView.separated(
          itemCount: example.length,
          separatorBuilder: (context, index) {
            return const SizedBox(height: 10);
          },
          itemBuilder: (context, index) {
            return ListItem(title: example[index], index: index);
            // Container(
            //   height: 100,
            //   color: Colors.blueGrey,
            //   child: Center(
            //     child: Text(example[index]),
            //   ),
            // );
          },
        ));
  }
}
// Container(
//   height: 100,
//   color: Colors.blueGrey,
// ),
