import 'package:travel_app/data/network/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:travel_app/domain/model/data_model.dart';
import 'package:travel_app/domain/repository/repository.dart';
import 'package:travel_app/domain/use_case/base_use_case.dart';

class DataUseCase extends BaseUseCase<void, List<DataModel>> {
  final Repository repository;

  DataUseCase(this.repository);
  @override
  Future<Either<Failure, List<DataModel>>> execute() async {
    return await repository.getData();
  }
}
