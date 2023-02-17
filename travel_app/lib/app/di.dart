import 'package:get_it/get_it.dart';
import 'package:travel_app/data/data_source/remote/data_services.dart';
import 'package:travel_app/data/repository/repository_img_data.dart';
import 'package:travel_app/domain/repository/repository.dart';
import 'package:travel_app/domain/use_case/data_use_case.dart';
import 'package:travel_app/presentation/cubit/app_cubits.dart';

var instance = GetIt.instance;

class ServiceLocator {
  initAppModeule() {
    instance.registerLazySingleton<DataServices>(() => DataServicesImp());
    instance.registerLazySingleton<Repository>(
        () => RepositoryImg(instance<DataServices>()));

    instance.registerFactory<DataUseCase>(
        () => DataUseCase(instance<Repository>()));

    instance
        .registerFactory<AppCubits>(() => AppCubits(instance<DataUseCase>()));
  }
  // initHomePage() {
  //   if (!GetIt.I.isRegistered<MoiveNowPlayingUseCase>()) {
  //     instance.registerFactory<MoiveNowPlayingUseCase>(
  //         () => MoiveNowPlayingUseCase(instance<MoiveRepository>()));
  //     instance.registerFactory<MoivesBloc>(
  //         () => MoivesBloc(instance<MoiveNowPlayingUseCase>()));
  //   }
}
