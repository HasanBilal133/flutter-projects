import 'package:flutter/material.dart';
import 'pages/input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFF330508),
          title: Center(
            child: Text('BMI Calculater',
              style: TextStyle(
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
        backgroundColor: Color(0XFFAD040C),
        body: InputPage(),
      ),
    );
  }
}
