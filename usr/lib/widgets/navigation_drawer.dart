import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    final role = authProvider.currentUser?.role ?? '';
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: Text('Role: ${role.toUpperCase()}'),
          ),
          // Role-specific menu items
          if (role == 'admin') ...[
            ListTile(title: const Text('User Management'), onTap: () => Navigator.pushNamed(context, '/user_management')),
            ListTile(title: const Text('Audit Trail'), onTap: () => Navigator.pushNamed(context, '/audit_trail')),
          ],
          if (role == 'receptionist') ...[
            ListTile(title: const Text('Patient Registration'), onTap: () => Navigator.pushNamed(context, '/patient_registration')),
            ListTile(title: const Text('Book Appointment'), onTap: () => Navigator.pushNamed(context, '/book_appointment')),
          ],
          // Add more based on roles
          ListTile(title: const Text('Logout'), onTap: () {
            authProvider.logout();
            Navigator.pushReplacementNamed(context, '/auth');
          }),
        ],
      ),
    );
  }
}