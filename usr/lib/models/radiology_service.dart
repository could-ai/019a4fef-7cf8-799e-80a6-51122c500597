class RadiologyService {
  final int id;
  final int patientId;
  final String serviceName;
  final String result;
  final String dateOfResult;

  RadiologyService({
    required this.id,
    required this.patientId,
    required this.serviceName,
    required this.result,
    required this.dateOfResult,
  });

  factory RadiologyService.fromJson(Map<String, dynamic> json) {
    return RadiologyService(
      id: json['id'],
      patientId: json['patient_id'],
      serviceName: json['service_name'],
      result: json['result'],
      dateOfResult: json['date_of_result'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'patient_id': patientId,
    'service_name': serviceName,
    'result': result,
    'date_of_result': dateOfResult,
  };
}