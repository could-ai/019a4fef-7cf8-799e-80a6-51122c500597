class Payment {
  final int id;
  final int patientId;
  final int invoiceId;
  final double amountPaid;
  final String datePaid;

  Payment({
    required this.id,
    required this.patientId,
    required this.invoiceId,
    required this.amountPaid,
    required this.datePaid,
  });

  factory Payment.fromJson(Map<String, dynamic> json) {
    return Payment(
      id: json['id'],
      patientId: json['patient_id'],
      invoiceId: json['invoice_id'],
      amountPaid: json['amount_paid'],
      datePaid: json['date_paid'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'patient_id': patientId,
    'invoice_id': invoiceId,
    'amount_paid': amountPaid,
    'date_paid': datePaid,
  };
}