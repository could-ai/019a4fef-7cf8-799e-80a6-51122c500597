import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import 'admin_dashboard.dart';
import 'receptionist_dashboard.dart';
import 'nurse_dashboard.dart';
import 'doctor_dashboard.dart';
import 'lab_technician_dashboard.dart';
import 'radiologist_dashboard.dart';
import 'pharmacist_dashboard.dart';
import 'accountant_dashboard.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    if (authProvider.login(_usernameController.text, _passwordController.text)) {
      final role = authProvider.currentUser!.role;
      Widget dashboard;
      switch (role) {
        case 'admin':
          dashboard = const AdminDashboard();
          break;
        case 'receptionist':
          dashboard = const ReceptionistDashboard();
          break;
        case 'nurse':
          dashboard = const NurseDashboard();
          break;
        case 'doctor':
          dashboard = const DoctorDashboard();
          break;
        case 'lab_technician':
          dashboard = const LabTechnicianDashboard();
          break;
        case 'radiologist':
          dashboard = const RadiologistDashboard();
          break;
        case 'pharmacist':
          dashboard = const PharmacistDashboard();
          break;
        case 'accountant':
          dashboard = const AccountantDashboard();
          break;
        default:
          dashboard = const AuthScreen(); // Fallback
      }
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => dashboard));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Invalid credentials')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _usernameController, decoration: const InputDecoration(labelText: 'Username')),
            TextField(controller: _passwordController, decoration: const InputDecoration(labelText: 'Password'), obscureText: true),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _login, child: const Text('Login')),
            const Text('Mock credentials: admin/pass, receptionist/pass, etc.'),
          ],
        ),
      ),
    );
  }
}