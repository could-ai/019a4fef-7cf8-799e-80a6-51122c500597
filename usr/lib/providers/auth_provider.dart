import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/user.dart';

class AuthProvider with ChangeNotifier {
  User? _currentUser;
  final List<User> _mockUsers = [
    User(id: 1, username: 'admin', password: 'pass', role: 'admin', name: 'Admin User'),
    User(id: 2, username: 'receptionist', password: 'pass', role: 'receptionist', name: 'Receptionist User'),
    User(id: 3, username: 'nurse', password: 'pass', role: 'nurse', name: 'Nurse User'),
    User(id: 4, username: 'doctor', password: 'pass', role: 'doctor', name: 'Doctor User'),
    User(id: 5, username: 'lab_tech', password: 'pass', role: 'lab_technician', name: 'Lab Tech User'),
    User(id: 6, username: 'radiologist', password: 'pass', role: 'radiologist', name: 'Radiologist User'),
    User(id: 7, username: 'pharmacist', password: 'pass', role: 'pharmacist', name: 'Pharmacist User'),
    User(id: 8, username: 'accountant', password: 'pass', role: 'accountant', name: 'Accountant User'),
  ];

  User? get currentUser => _currentUser;

  bool login(String username, String password) {
    final user = _mockUsers.firstWhere(
      (u) => u.username == username && u.password == password,
      orElse: () => User(id: 0, username: '', password: '', role: '', name: ''),
    );
    if (user.id != 0) {
      _currentUser = user;
      notifyListeners();
      return true;
    }
    return false;
  }

  void logout() {
    _currentUser = null;
    notifyListeners();
  }
}