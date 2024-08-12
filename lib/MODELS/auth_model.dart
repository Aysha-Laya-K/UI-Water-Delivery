class AuthModel {
  final bool status;
  final Map<String, dynamic> data;
  final String message;

  AuthModel({required this.status, required this.data, required this.message});

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      status: json['status'] ?? false,
      data: json['data'] ?? {},
      message: json['message'] ?? '',
    );
  }
}
