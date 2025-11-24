import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  void _handleRegister(BuildContext context) {
    // Simulasi Pendaftaran Sukses
    // Di proyek nyata, kirim data ke server
    
    // Setelah sukses, kembali ke Halaman Login (pop)
    Navigator.pop(context);

    // Tampilkan notifikasi
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Pendaftaran berhasil! Silakan Login.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ... Tambahkan TextField untuk Nama, Email, Password ...
            TextField(decoration: const InputDecoration(labelText: 'Nama Lengkap')),
            const SizedBox(height: 15),
            TextField(decoration: const InputDecoration(labelText: 'Email')),
            const SizedBox(height: 15),
            TextField(obscureText: true, decoration: const InputDecoration(labelText: 'Password')),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => _handleRegister(context),
              child: const Text('REGISTER'),
            ),
          ],
        ),
      ),
    );
  }
}