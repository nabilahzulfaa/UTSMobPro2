import 'package:flutter/material.dart';
import 'surah_list_page.dart'; // Halaman List Informasi
import 'about_page.dart'; // Halaman About Aplikasi
import 'map_page.dart'; // Contoh Halaman Fitur/Library

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0; // State untuk melacak tab aktif

  // Daftar Halaman yang akan ditampilkan di Bottom Navigation
  final List<Widget> _pages = <Widget>[
    SurahListPage(), // (e) Halaman List Informasi
    const MapPage(), // (d) Halaman Integrasi Library
    const AboutPage(), // (g) Halaman About Aplikasi
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Menampilkan halaman yang sesuai dengan _selectedIndex
        child: _pages.elementAt(_selectedIndex),
      ),
      // (f) Menggunakan Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Surah'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Fitur'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: _onItemTapped,
      ),
    );
  }
}
// Catatan: Anda perlu membuat file surah_list_page.dart, about_page.dart, dan map_page.dart
// (atau ganti map_page dengan nama fitur library yang Anda gunakan).