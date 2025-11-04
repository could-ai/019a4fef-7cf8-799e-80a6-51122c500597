class User {
  final int id;
  final String username;
  final String password; // Mock only
  final String role; // e.g., 'admin', 'receptionist', 'nurse', etc.
  final String name;

  User({
    required this.id,
    required this.username,
    required this.password,
    required this.role,
    required this.name,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
      password: json['password'],
      role: json['role'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'username': username,
    'password': password,
    'role': role,
    'name': name,
  };
}