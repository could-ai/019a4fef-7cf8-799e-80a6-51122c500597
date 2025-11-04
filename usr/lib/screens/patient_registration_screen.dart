import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';

class PatientRegistrationScreen extends StatelessWidget {
  const PatientRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Register Patient')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: const InputDecoration(labelText: 'Name')),
            TextField(decoration: const InputDecoration(labelText: 'DOB')),
            TextField(decoration: const InputDecoration(labelText: 'Gender')),
            TextField(decoration: const InputDecoration(labelText: 'Contact')),
            ElevatedButton(onPressed: () {
              // Mock registration
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Patient registered')));
            }, child: const Text('Register')),
          ],
        ),
      ),
    );
  }
}