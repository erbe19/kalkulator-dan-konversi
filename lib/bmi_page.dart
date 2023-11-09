import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  double height = 170; // Tinggi awal dalam cm
  double weight = 70;  // Berat awal dalam kg
  double bmi = 0;      // Inisialisasi BMI
  String bmiCategory = ''; // Kategori BMI

  void calculateBMI() {
    // Menghitung BMI: Berat (kg) / (Tinggi (m) * Tinggi (m))
    double heightInMeters = height / 100; // Konversi tinggi ke meter
    setState(() {
      bmi = weight / (heightInMeters * heightInMeters);
      if (bmi < 18.5) {
        bmiCategory = 'Kurang berat badan';
      } else if (bmi >= 18.5 && bmi < 25) {
        bmiCategory = 'Berat badan normal (ideal)';
      } else if (bmi >= 25 && bmi < 30) {
        bmiCategory = 'Kelebihan berat badan';
      } else {
        bmiCategory = 'Obesitas';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/bmi.png'), // Tambahkan gambar suhu di sini
            SizedBox(height: 15.0),
            Text('Tinggi (cm):'),
            Slider(
              value: height,
              min: 100,
              max: 250,
              onChanged: (value) {
                setState(() {
                  height = value;
                });
              },
            ),
            Text(height.toStringAsFixed(0)),
            Text('Berat (kg):'),
            Slider(
              value: weight,
              min: 40,
              max: 150,
              onChanged: (value) {
                setState(() {
                  weight = value;
                });
              },
            ),
            Text(weight.toStringAsFixed(0)),
            ElevatedButton(
              onPressed: () {
                calculateBMI();
              },
              child: Text('Hitung BMI'),
            ),
            Text('BMI: ${bmi.toStringAsFixed(2)}'),
            Text('Kategori: $bmiCategory'),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: BMICalculator(),
  ));
}
