import 'package:flutter/material.dart';
import 'login_page.dart'; // Import halaman tujuan

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // 1. Jalankan fungsi di initState
    _navigateToHome();
  }

  _navigateToHome() async {
    // 2. Tunda navigasi selama 3 detik
    await Future.delayed(const Duration(seconds: 3), () {});
    
    // 3. Navigasi ke Halaman Login dan hapus rute sebelumnya (Splash)
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        // Tampilan SplashScreen, misalnya logo
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 10),
            Text('Loading Aplikasi Quran...'),
          ],
        ),
      ),
    );
  }
}