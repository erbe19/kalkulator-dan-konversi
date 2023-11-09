import 'package:flutter/material.dart';

class DistanceConverterPage extends StatefulWidget {
  @override
  _DistanceConverterPageState createState() => _DistanceConverterPageState();
}

class _DistanceConverterPageState extends State<DistanceConverterPage> {
  double kilometerValue = 0;
  double meterValue = 0;
  double mileValue = 0;

  void convertDistance() {
    setState(() {
      meterValue = kilometerValue * 1000; // 1 kilometer = 1000 meter
      mileValue = kilometerValue / 1.60934; // 1 kilometer = 0.621371 mile
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konversi Jarak'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Kilometer'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    kilometerValue = double.tryParse(value) ?? 0;
                  });
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: convertDistance,
                child: Text('Convert'),
              ),
              SizedBox(height: 16.0),
              Text('Meter: $meterValue m'),
              Text('Mil: $mileValue mi'),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DistanceConverterPage(),
  ));
}
