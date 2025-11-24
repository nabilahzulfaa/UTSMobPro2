import 'package:flutter/material.dart';
import 'package:quran_library/quran_library.dart';

// Halaman ini menerima objek Surah yang dikirim dari SurahListPage
class AyatReaderPage extends StatelessWidget {
  final Surah surah;

  const AyatReaderPage({Key? key, required this.surah}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ayats = surah.ayats;

    return Scaffold(
      appBar: AppBar(
        title: Text('${surah.englishName} (${surah.name})'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: ayats.length,
        itemBuilder: (context, index) {
          final ayat = ayats[index];
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Nomor Ayat dan Teks Arab
                Text(
                  '${ayat.text} (${ayat.number})',
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                      fontSize: 28,
                      // Penting: Gunakan font yang mendukung tulisan Arab di device target Anda.
                      // Jika teks tidak muncul, Anda harus menambahkan custom font Arab.
                      fontFamily: 'Scheherazade',
                      height: 2.0,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                // Placeholder untuk Terjemahan/Tafsir (jika library tidak menyediakan terjemahan)
                const Text(
                  'Terjemahan ayat belum tersedia di library ini, fokus pada teks Arab.',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, color: Colors.grey),
                ),
                const Divider(height: 20),
              ],
            ),
          );
        },
      ),
    );
  }
}
