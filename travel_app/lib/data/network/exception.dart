import '../../data/network/erroe_message_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel failure;
  const ServerException({required this.failure});
}

class LocalException implements Exception {
  final String message;
  const LocalException({required this.message});
}
