import 'package:flutter/material.dart';
import 'package:zero_to_mastery_cleanarchitecture/presentation/counter/counter_screen.dart';
import 'package:zero_to_mastery_cleanarchitecture/presentation/list/list_screen.dart';
import 'package:zero_to_mastery_cleanarchitecture/presentation/widgets_example/widgets_example_screen.dart';

class RootBottomNavigation extends StatefulWidget {
  const RootBottomNavigation({super.key});

  @override
  State<RootBottomNavigation> createState() => _RootBottomNavigationState();
}

class _RootBottomNavigationState extends State<RootBottomNavigation> {
  int _curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _curentIndex,
        children: const [
          WidgetScreen(),
          CounterScreen(),
          ListScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            _curentIndex = index;
          });
        },
        currentIndex: _curentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "example"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "counter"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "list"),
        ],
      ),
    );
  }
}
