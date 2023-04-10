// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:appjamakademi/pages/Anasayfa.dart';
import 'package:appjamakademi/pages/Gorevler.dart';
import 'package:appjamakademi/pages/Notlar.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
 int _currentIndex = 0;
  List pages = [
    const Anasayfa(),
    const Notlar(),
    const Gorevler()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Icons.home_rounded), label: "Anasayfa"),
        NavigationDestination(icon: Icon(Icons.notes_outlined), label: "Notlar"),
        NavigationDestination(icon: Icon(Icons.task_alt_rounded), label: "Görevler"),
      ],
      selectedIndex: _currentIndex,
      onDestinationSelected: (value){
        setState(() {
          _currentIndex = value;
        });
      },
      ),
    );
  }
}
