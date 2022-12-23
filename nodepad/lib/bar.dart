import 'package:flutter/material.dart';
import 'main.dart';
import 'setting.dart';
import 'history.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color warna_icon = Colors.white;
  Color warna_putih = Color.fromARGB(255, 124, 124, 124);
  int _selectedIndex = 0;
final screens = [
    HomePage(),
    Riwayat(),
    Setting()
  ];
  void _onItemTapped(int index) {
    setState(() {
      this._selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: screens[_selectedIndex],

      bottomNavigationBar: NavigationBarTheme (
          
          data: NavigationBarThemeData(
            
            indicatorColor: Color.fromARGB(255, 27, 106, 50),
            labelTextStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.white)
            )
          ),child: NavigationBar (
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            animationDuration: Duration(seconds: 1),
            height: 60,
            backgroundColor: Color.fromARGB(255, 12, 4,4),
            destinations: [
              NavigationDestination(
                icon: Icon(Icons.home,color: warna_putih,),
                selectedIcon: Icon(Icons.home,color: warna_icon,),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.business,color: warna_putih,),
                selectedIcon: Icon(Icons.business,color: warna_icon,),
                label: 'Private',
              ),
              NavigationDestination(
                icon: Icon(Icons.school,color: warna_putih,),
                selectedIcon: Icon(Icons.school,color: warna_icon,),
                label: 'Note',
                
              ),
            ],
            selectedIndex: _selectedIndex,
            onDestinationSelected: _onItemTapped,
            
          ),
        ),
    );
  }
}