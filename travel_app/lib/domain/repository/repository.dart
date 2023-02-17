import 'package:dartz/dartz.dart';
import 'package:travel_app/data/network/failure.dart';
import 'package:travel_app/domain/model/data_model.dart';

abstract class Repository {
  Future<Either<Failure, List<DataModel>>> getData();
}
