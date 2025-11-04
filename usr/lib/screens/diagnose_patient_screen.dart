import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';

class DiagnosePatientScreen extends StatelessWidget {
  const DiagnosePatientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Diagnose Patient')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: const InputDecoration(labelText: 'Patient ID')),
            TextField(decoration: const InputDecoration(labelText: 'Diagnosis')),
            TextField(decoration: const InputDecoration(labelText: 'Prescription')),
            ElevatedButton(onPressed: () {
              // Mock diagnosis
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Diagnosis saved')));
            }, child: const Text('Save')),
          ],
        ),
      ),
    );
  }
}