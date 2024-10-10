import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection time out !');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send time out !');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive time out !');
      case DioExceptionType.badCertificate:
        return ServerFailure('Oops!, Unexpected error...');
      case DioExceptionType.badResponse:
        return ServerFailure('Oops!, Unexpected error...');
      case DioExceptionType.cancel:
        return ServerFailure('Receive time out !');
      case DioExceptionType.connectionError:
        return ServerFailure('Check your network !');
      case DioExceptionType.unknown:
        return ServerFailure('Oops!, Unexpected error...');
      default:
        return ServerFailure('Oops!, Unexpected error...');
    }
  }
}
