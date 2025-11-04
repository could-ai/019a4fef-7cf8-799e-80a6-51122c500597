import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';

class ReviewInvoicesScreen extends StatelessWidget {
  const ReviewInvoicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Review Invoices')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Mock Invoices List'),
            Expanded(child: ListView(children: const [ListTile(title: Text('Invoice #1 - $500'))])),
            ElevatedButton(onPressed: () {
              // Mock review
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Invoices reviewed')));
            }, child: const Text('Mark as Reviewed')),
          ],
        ),
      ),
    );
  }
}