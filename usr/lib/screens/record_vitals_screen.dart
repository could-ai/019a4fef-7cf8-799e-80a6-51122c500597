import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';

class RecordVitalsScreen extends StatelessWidget {
  const RecordVitalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Record Vitals')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: const InputDecoration(labelText: 'Patient ID')),
            TextField(decoration: const InputDecoration(labelText: 'Blood Pressure')),
            TextField(decoration: const InputDecoration(labelText: 'Temperature')),
            ElevatedButton(onPressed: () {
              // Mock recording
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Vitals recorded')));
            }, child: const Text('Record')),
          ],
        ),
      ),
    );
  }
}