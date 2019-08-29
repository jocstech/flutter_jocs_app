// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:jocs_app/views/index.dart';

void main() => runApp(App());

// #docregion MyApp
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.black),
      darkTheme:
          ThemeData(brightness: Brightness.dark, primaryColor: Colors.black),
      home: Main(),
    );
  }
  // #enddocregion build
}
// #enddocregion MyApp

class Main extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainState();
  }
}

class _MainState extends State<Main> {
  static bool _tabTouched = false;
  static int _currentIndex = 0;
  static final List<Widget> _pages = [
    HomeView(),
    ListingView(),
    ProjectsView(),
    ProfileView()
  ];
  static final List<String> _titles = ['广场中心', '公司列表', '工程项目', '个人中心'];
  static const String _title = '方雨龙的APP';
  @override
  // #docregion build
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tabTouched ? _titles[_currentIndex] : _title),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text(_titles[0]),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.list),
            title: new Text(_titles[1]),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.search),
            title: new Text(_titles[2]),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text(_titles[3]),
          ),
        ],
        onTap: onTabTapped,
      ),
    );
  }

  // handler for tab changes
  void onTabTapped(int index) {
    setState(() {
      _tabTouched = true;
      _currentIndex = index;
    });
  }
}
