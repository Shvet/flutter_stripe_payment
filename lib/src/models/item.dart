class PaymentItem {
  final String label;
  final double amount;

  PaymentItem({required this.label, required this.amount});

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    map["label"] = label;
    map["amount"] = amount;
    return map;
  }
}
