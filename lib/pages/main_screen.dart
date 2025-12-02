import 'package:flutter/material.dart';
import 'package:quran_library/quran_library.dart';
import 'about_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<dynamic> allSurahs = QuranLibrary.getAllSurahs();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      _buildQuranList(),
      const AboutPage(),
    ];

    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xFF00695C),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Surah'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
        ],
      ),
    );
  }

  Widget _buildQuranList() {
    return Scaffold(
      appBar: AppBar(title: const Text("Daftar Surah")),
      body: ListView.builder(
        itemCount: allSurahs.length,
        itemBuilder: (context, index) {
          final surah = allSurahs[index];
          return Card(
            color: const Color(0xFFF0FDF4),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color(0xFF4DB6AC),
                child: Text("${surah.number}",
                    style: const TextStyle(color: Colors.white)),
              ),
              title: Text(surah.englishName,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle:
                  Text("${surah.revelationType} • ${surah.numberOfAyahs} Ayat"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SurahDisplayScreen(
                      surahNumber: surah.number,
                      parentContext: context,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
