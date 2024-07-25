import 'package:flutter/material.dart';
import 'package:wheatherapp/page/detail/detail_page.dart';
import 'package:wheatherapp/page/home/home_page.dart';

class BottomNavigationCustom extends StatefulWidget {
  const BottomNavigationCustom({super.key});

  @override
  State<BottomNavigationCustom> createState() => _BottomNavigationCustomState();
}

class _BottomNavigationCustomState extends State<BottomNavigationCustom> {
  List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    const BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
  ];

  List<Widget> pages = [
    const HomePage(),
    const DetailPage(),
  ];

  int activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[activePage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        currentIndex: activePage,
        elevation: 0,
        onTap: (index) {
          setState(() {
            activePage = index;

            print(activePage);
          });
        },
        items: items,
      ),
    );
  }
}
