class Appointment {
  final int id;
  final int patientId;
  final int doctorId;
  final String dateTime;
  final String type; // 'consultation' or 'follow-up'
  final double charge;

  Appointment({
    required this.id,
    required this.patientId,
    required this.doctorId,
    required this.dateTime,
    required this.type,
    required this.charge,
  });

  factory Appointment.fromJson(Map<String, dynamic> json) {
    return Appointment(
      id: json['id'],
      patientId: json['patient_id'],
      doctorId: json['doctor_id'],
      dateTime: json['date_time'],
      type: json['type'],
      charge: json['charge'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'patient_id': patientId,
    'doctor_id': doctorId,
    'date_time': dateTime,
    'type': type,
    'charge': charge,
  };
}