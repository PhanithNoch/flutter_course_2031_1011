import 'package:blog_app/home.dart';
import 'package:blog_app/screens/home.dart';
import 'package:blog_app/screens/inbox.dart';
import 'package:blog_app/screens/person.dart';
import 'package:blog_app/screens/settings.dart';
import 'package:flutter/material.dart';

class BottomNavigationbarExample extends StatefulWidget {
  const BottomNavigationbarExample({Key? key}) : super(key: key);

  @override
  State<BottomNavigationbarExample> createState() =>
      _BottomNavigationbarExampleState();
}

class _BottomNavigationbarExampleState
    extends State<BottomNavigationbarExample> {
  int _currentIndex = 0;
  final _lstScreens = [
    HomeScreen(),
    InboxScreen(),
    PersonScreen(),
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _lstScreens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          print('index $index');
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
