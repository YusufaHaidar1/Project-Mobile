class ByStatus{
  final String status;
  final int total;

  ByStatus({
    required this.status,
    required this.total
  });

  factory ByStatus.fromJson(Map<String, dynamic> parsedJson){
    return ByStatus(status: parsedJson['grouped_status'], total: parsedJson['total']);
  }
}