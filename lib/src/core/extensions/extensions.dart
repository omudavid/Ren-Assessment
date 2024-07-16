import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'failure.dart';

extension ErrorHandler on Exception {
  String? get errorMessage {
    try {
      var error = this as DioException;
      var errors = error.response?.data['errors'] as Map<String, dynamic>?;

      if (errors == null) {
        return error.response?.data?['message'] ??
            'A problem occurred while handling your request.';
      } else {
        final values = errors.values;
        return errors.values.join(' ${values.length > 1 ? 'and' : ','} ');
      }
    } catch (e) {
      return 'A problem occurred while handling your request.';
    }
  }
}


extension FutureExtension<T> on Future<T> {

  Future<Either<Failure, T>> makeRequest() async {
    try {
      final data = await this;
      return Right(data);
    } on DioException catch (e, s) {
      ///Handle Error
      return Left(
        ServerFailure(
            message: e.errorMessage, statusCode: e.response?.statusCode),
      );
    } catch (e, s) {
      ///Handle Error
      return const Left(
        ServerFailure(),
      );
    }
  }
}