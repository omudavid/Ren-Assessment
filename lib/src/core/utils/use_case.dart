import 'package:dartz/dartz.dart';
import 'package:renmoney_assessment/src/core/extensions/failure.dart';

abstract class UseCase<Type, Param> {
  Future<Either<Failure, Type>> call(Param param);
}
