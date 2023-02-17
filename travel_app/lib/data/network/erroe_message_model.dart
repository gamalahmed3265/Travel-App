import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  int status_code;
  String status_message;
  bool success;

  ErrorMessageModel({
    required this.status_code,
    required this.status_message,
    required this.success,
  });
  factory ErrorMessageModel.formJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
        status_code: json["status_code"],
        status_message: json["status_message"],
        success: json["success"]);
  }

  @override
  List<Object?> get props => [status_code, status_message, success];
}
