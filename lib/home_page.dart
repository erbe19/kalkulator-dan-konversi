import 'package:flutter/material.dart';
import 'package:project_uts/account_page.dart';
import 'package:project_uts/bmi_page.dart';
import 'package:project_uts/distance_converter_page.dart';
import 'package:project_uts/info.page.dart';
import 'package:project_uts/user.dart';
import 'calculator_page.dart';
import 'currency_converter_page.dart';
import 'temperature_converter_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; // Indeks halaman aktif

  // Daftar halaman yang dapat dipilih
  final List<Widget> _pages = [
    HomePage(), // Halaman "Home"
    AccountPage(
      user: User(
      name: 'Rizky Bachtiar',
      username: 'erbe',
      email: 'rbachtiar71@gmail.com',
      phoneNumber: '082117672806',
      birthplace: 'Bandung',
      birthdate: '19-08-2002',
      password: '123',
    )
    ), // Halaman "Akun" (buat halaman AccountPage sesuai kebutuhan)
    InfoPage(), // Halaman "Info" (buat halaman InfoPage sesuai kebutuhan)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            _buildIconButton(
              'Kalkulator',
              Icons.calculate,
              () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CalculatorPage()));
              },
            ),
            _buildIconButton(
              'Konversi Mata Uang',
              Icons.attach_money,
              () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CurrencyConverterPage()));
              },
            ),
            _buildIconButton(
              'Konversi Suhu',
              Icons.ac_unit,
              () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TemperatureConverterPage()));
              },
            ),
            _buildIconButton(
              'BMI',
              Icons.scale,
              () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>BMICalculator ()));
              },
            ),
            _buildIconButton(
              'Distance',
              Icons.social_distance,
              () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>DistanceConverterPage ()));
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
  currentIndex: _currentIndex,
  onTap: (index) {
    setState(() {
      _currentIndex = index;
    });

    // Periksa jika indeks adalah 1 (indeks "Akun")
    if (index == 1) {
      // Navigasi ke halaman "Akun"
      Navigator.push(context, MaterialPageRoute(builder: (context) => AccountPage(
      user: User(
      name: 'Rizky Bachtiar',
      username: 'erbe',
      email: 'rbachtiar71@gmail.com',
      phoneNumber: '082117672806',
      birthplace: 'Bandung',
      birthdate: '19-08-2002',
      password: '123',
    )
      )
      )
      );
    }
    if (index == 2) {
      // Navigasi ke halaman "Akun"
      Navigator.push(context, MaterialPageRoute(builder: (context) => InfoPage()));
    }
  },
  
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle),
      label: 'Akun',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.info),
      label: 'Info',
    ),
  ],
),
    );
  }

  Widget _buildIconButton(String label, IconData icon, void Function() onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 40,
          ),
          SizedBox(height: 10),
          Text(label),
        ],
      ),
    );
  }
}



