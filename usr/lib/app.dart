import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import 'patient_registration_screen.dart';
import 'record_vitals_screen.dart';
import 'diagnose_patient_screen.dart';
import 'conduct_test_screen.dart';
import 'upload_result_screen.dart';
import 'manage_inventory_screen.dart';
import 'review_invoices_screen.dart';

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