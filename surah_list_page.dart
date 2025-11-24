import 'package:flutter/material.dart';
import 'package:quran_library/quran_library.dart'; // Import library quran
import 'ayat_reader_page.dart'; // Import halaman tujuan (Integrasi Library)

class SurahListPage extends StatelessWidget {
  const SurahListPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengambil daftar semua Surah dari library
    final surahs = QuranData.surahs;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Surah (List Informasi)'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        // Menggunakan ListView.builder untuk menampilkan data dinamis
        itemCount: surahs.length,
        itemBuilder: (context, index) {
          final surah = surahs[index];

          return Column(
            children: [
              ListTile(
                // Nomor Surah sebagai Leading widget
                leading: CircleAvatar(
                  backgroundColor: Colors.teal.shade100,
                  child: Text(
                    '${surah.number}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.teal),
                  ),
                ),
                // Nama Surah dalam bahasa Inggris sebagai judul
                title: Text(surah.englishName),
                // Detail Surah sebagai subjudul
                subtitle: Text('${surah.name} - ${surah.numberOfAyahs} Ayat'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 14),
                onTap: () {
                  // Navigasi ke halaman pembaca ayat saat di-tap
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AyatReaderPage(surah: surah),
                    ),
                  );
                },
              ),
              const Divider(height: 1, indent: 16, endIndent: 16),
            ],
          );
        },
      ),
    );
  }
}
