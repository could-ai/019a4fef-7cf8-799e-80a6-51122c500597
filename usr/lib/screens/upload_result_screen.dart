import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';

class UploadResultScreen extends StatelessWidget {
  const UploadResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Upload Radiology Result')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: const InputDecoration(labelText: 'Patient ID')),
            TextField(decoration: const InputDecoration(labelText: 'Service Name')),
            TextField(decoration: const InputDecoration(labelText: 'Result')),
            ElevatedButton(onPressed: () {
              // Mock upload
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Result uploaded')));
            }, child: const Text('Upload')),
          ],
        ),
      ),
    );
  }
}