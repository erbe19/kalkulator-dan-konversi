import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Pembuat'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 75, // Ukuran lingkaran
              backgroundImage: AssetImage('assets/profil.JPG'), // Ganti dengan path ke foto pembuat Anda
            ),
            SizedBox(height: 20),
            Text(
              'Rizky Bachtiar',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'CEO OF ERBE CORPORATION',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'Email: rbachtiar@gmail.com',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'Telp: 082117672806',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
