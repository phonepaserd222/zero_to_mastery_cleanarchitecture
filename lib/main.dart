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
                      "https://scontent.futh1-1.fna.fbcdn.net/v/t39.30808-6/367432797_249094054686779_8363083864096153828_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeHFJ_q52Xk8FYGlrVtPoiQ1dR8cbW5NtMR1Hxxtbk20xJ78zDSQv8yHXr1n3nI7WsvzNuvjbHHUOdRwOElmChsw&_nc_ohc=0UDeRY6HoYYAX9Bp6uh&_nc_ht=scontent.futh1-1.fna&oh=00_AfDYlA26GihE_VWiYOTwwZ9c4Sr1SNzE56f3Py4wj-3UAg&oe=65EA1A2C",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const MediaQueryExample(),
                const SizedBox(
                  height: 40,
                ),
                Builder(
                  builder: (context) {
                    return Container(
                      color: Colors.green,
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: const Center(
                        child: Text("MediaQuery Example"),
                      ),
                    );
                  },
                ),
              ],
            ),
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

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.green,
      width: size.width / 2,
      height: size.height / 5,
      child: const Center(
        child: Text("MediaQuery Example"),
      ),
    );
  }
}
