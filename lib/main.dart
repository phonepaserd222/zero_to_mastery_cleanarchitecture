import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.green,
      )),
      // open & close debug banner
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("flutter Basic"),
        ),
        body: Container(
          color: Colors.red,
          // height: 200,
          // width: 200,
          // decoration: BoxDecoration(
          //     color: Colors.blue, borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    flex: 2,
                    child: Text(
                      "Boi Beerwarn - Freelancer for flutter - living in vientaine",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    color: Colors.green,
                  ),
                ],
              ),
              Container(
                color: Colors.green,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("First Column child"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                child: const Center(
                  child: Text(
                    "hello World",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Stack(
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
              ),
              const SizedBox(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://scontent.futh1-1.fna.fbcdn.net/v/t39.30808-6/355872695_218168684445983_2205309441607705270_n.jpg?stp=cp6_dst-jpg&_nc_cat=108&ccb=1-7&_nc_sid=dd5e9f&_nc_eui2=AeH9Rbkoo4DGCpsqckayWzhkmLTMKFaPI4iYtMwoVo8jiGGYhawpBPs1BnyOIHrWfk72QKer4LT-1gJyltfmerJM&_nc_ohc=7JvQ3DI6K9UAX9ltwOb&_nc_ht=scontent.futh1-1.fna&oh=00_AfBujRZsAq9Zj9mxRTOOfNlECZfr8HnET9PHeMCNYvqq9w&oe=65E51F49",
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text("Last Column child"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint("clicked"),
          child: const Icon(Icons.ac_unit),
        ),
      ),
    );
  }
}
