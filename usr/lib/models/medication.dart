class Medication {
  final int id;
  final int patientId;
  final String name;
  final String prescription;
  final int quantity;
  final double price;

  Medication({
    required this.id,
    required this.patientId,
    required this.name,
    required this.prescription,
    required this.quantity,
    required this.price,
  });

  factory Medication.fromJson(Map<String, dynamic> json) {
    return Medication(
      id: json['id'],
      patientId: json['patient_id'],
      name: json['name'],
      prescription: json['prescription'],
      quantity: json['quantity'],
      price: json['price'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'patient_id': patientId,
    'name': name,
    'prescription': prescription,
    'quantity': quantity,
    'price': price,
  };
}