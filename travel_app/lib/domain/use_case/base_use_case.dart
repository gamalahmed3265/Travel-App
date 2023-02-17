import 'package:dartz/dartz.dart';
import 'package:travel_app/data/network/failure.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<Failure, Out>> execute();
}
