import 'package:flutter/material.dart';
import 'screens/auth_screen.dart';
import 'screens/patient_registration_screen.dart';
import 'screens/record_vitals_screen.dart';
import 'screens/diagnose_patient_screen.dart';
import 'screens/conduct_test_screen.dart';
import 'screens/upload_result_screen.dart';
import 'screens/manage_inventory_screen.dart';
import 'screens/review_invoices_screen.dart';

class HospitalManagementApp extends StatelessWidget {
  const HospitalManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hospital Management System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const AuthScreen(),
      routes: {
        '/auth': (context) => const AuthScreen(),
        '/patient_registration': (context) => const PatientRegistrationScreen(),
        '/record_vitals': (context) => const RecordVitalsScreen(),
        '/diagnose_patient': (context) => const DiagnosePatientScreen(),
        '/conduct_test': (context) => const ConductTestScreen(),
        '/upload_result': (context) => const UploadResultScreen(),
        '/manage_inventory': (context) => const ManageInventoryScreen(),
        '/review_invoices': (context) => const ReviewInvoicesScreen(),
      },
    );
  }
}
