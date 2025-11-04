import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';

class ManageInventoryScreen extends StatelessWidget {
  const ManageInventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Manage Inventory')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: const InputDecoration(labelText: 'Medication Name')),
            TextField(decoration: const InputDecoration(labelText: 'Quantity')),
            TextField(decoration: const InputDecoration(labelText: 'Price')),
            ElevatedButton(onPressed: () {
              // Mock update
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Inventory updated')));
            }, child: const Text('Update')),
          ],
        ),
      ),
    );
  }
}