import 'package:flutter/material.dart';
import 'package:midterm/appointment_screen.dart';
import 'package:midterm/home_screen.dart';
import 'package:midterm/login_screen.dart';
import 'package:midterm/medical_records_screen.dart';
import 'package:midterm/splash_screen.dart';

void main() => runApp(HealthcareApp());

class HealthcareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthcare App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
          titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue,
          textTheme: ButtonTextTheme.primary,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
          labelStyle: TextStyle(color: Colors.blue),
        ),
      ),
      home: SplashScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/appointment': (context) => AppointmentScreen(),
        '/records': (context) => MedicalRecordsScreen(),
      },
    );
  }
}