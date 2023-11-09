import 'dart:async';
import 'package:flutter/material.dart';

import 'package:project_uts/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(), // Halaman splash menjadi halaman awal
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Setelah beberapa detik (contoh: 2 detik), pindah ke halaman utama
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Tambahkan logo atau gambar selamat datang di sini
           Image.asset('assets/Logo.png'), // Ganti dengan path ke gambar/logo Anda
            SizedBox(height: 20),
            Text(
              'Selamat Datang!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.only(
//               top: 40,
//             ),
//             child: Center(
//               child: Column(
//                 children: [
//                   Text(
//                     'Import Assets ke Project Flutter',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   SizedBox(height: 5),
//                   Image.asset(
//                     'assets/Logo.png',
//                     height: 350,
//                     width: 350,
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }