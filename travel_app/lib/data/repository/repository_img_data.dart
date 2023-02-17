import 'package:travel_app/data/data_source/remote/data_services.dart';
import 'package:travel_app/data/network/exception.dart';
import 'package:travel_app/domain/model/data_model.dart';
import 'package:travel_app/data/network/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:travel_app/domain/repository/repository.dart';

class RepositoryImg extends Repository {
  final DataServices dataServices;

  RepositoryImg(this.dataServices);
  @override
  Future<Either<Failure, List<DataModel>>> getData() async {
    final response = await dataServices.getData();

    try {
      return Right(response);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.failure.status_message));
    }
  }
}
