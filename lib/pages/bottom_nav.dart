import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper/pages/categories.dart';
import 'package:wallpaper/pages/home_screen.dart';
import 'package:wallpaper/pages/search.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;
  late List<Widget> pages;
  late HomeScreen home;
  late Search search;
  late Categories categories;
  late Widget currentPage;

  @override
  void initState() {
    super.initState();
    home = HomeScreen();
    search = Search();
    categories = Categories();
    pages = [home, search, categories];
    currentPage = home;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.black,
        backgroundColor: Colors.white,
        height: 60,
        color: Color.fromARGB(255, 84, 87, 93),
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: [
        Icon(Icons.home_outlined,color: Colors.white,),
        Icon(Icons.search_outlined, color: Colors.white,),
        Icon(Icons.category, color: Colors.white,),
      ],),
      body: pages[currentTabIndex],
    );
  }
}
