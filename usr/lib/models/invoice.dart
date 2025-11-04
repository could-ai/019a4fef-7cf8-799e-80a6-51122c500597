class Invoice {
  final int id;
  final int patientId;
  final double totalAmount;
  final String dateGenerated;
  final List<String> services; // e.g., ['consultation', 'lab_test']

  Invoice({
    required this.id,
    required this.patientId,
    required this.totalAmount,
    required this.dateGenerated,
    required this.services,
  });

  factory Invoice.fromJson(Map<String, dynamic> json) {
    return Invoice(
      id: json['id'],
      patientId: json['patient_id'],
      totalAmount: json['total_amount'],
      dateGenerated: json['date_generated'],
      services: List<String>.from(json['services']),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'patient_id': patientId,
    'total_amount': totalAmount,
    'date_generated': dateGenerated,
    'services': services,
  };
}