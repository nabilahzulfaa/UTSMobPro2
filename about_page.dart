import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    // GANTI DENGAN NAMA DAN NPM ANDA
    const String namaNPM = "NAMA_ANDA_NPM_ANDA";

    return Scaffold(
      appBar: AppBar(
        title: const Text('About Aplikasi'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.menu_book, size: 80, color: Colors.teal),
              const SizedBox(height: 20),
              const Text(
                'Aplikasi Pembaca Al-Qur\'an Sederhana',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'Dibuat menggunakan Flutter dan integrasi quran_library.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              // Persyaratan (g) terpenuhi
              Text(
                'Copyright by $namaNPM',
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
