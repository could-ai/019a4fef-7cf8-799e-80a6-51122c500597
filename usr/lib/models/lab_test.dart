class LabTest {
  final int id;
  final int patientId;
  final String testName;
  final String result;
  final String dateOfResult;

  LabTest({
    required this.id,
    required this.patientId,
    required this.testName,
    required this.result,
    required this.dateOfResult,
  });

  factory LabTest.fromJson(Map<String, dynamic> json) {
    return LabTest(
      id: json['id'],
      patientId: json['patient_id'],
      testName: json['test_name'],
      result: json['result'],
      dateOfResult: json['date_of_result'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'patient_id': patientId,
    'test_name': testName,
    'result': result,
    'date_of_result': dateOfResult,
  };
}