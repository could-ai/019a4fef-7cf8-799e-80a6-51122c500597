import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';

class ConductTestScreen extends StatelessWidget {
  const ConductTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Conduct Test')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: const InputDecoration(labelText: 'Patient ID')),
            TextField(decoration: const InputDecoration(labelText: 'Test Name')),
            TextField(decoration: const InputDecoration(labelText: 'Result')),
            ElevatedButton(onPressed: () {
              // Mock test
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Test conducted')));
            }, child: const Text('Submit Result')),
          ],
        ),
      ),
    );
  }
}