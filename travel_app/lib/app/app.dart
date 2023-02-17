import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/app/di.dart';
import 'package:travel_app/data/data_source/remote/data_services.dart';
import 'package:travel_app/data/repository/repository_img_data.dart';
import 'package:travel_app/domain/repository/repository.dart';
import 'package:travel_app/domain/use_case/data_use_case.dart';
import 'package:travel_app/presentation/cubit/app_cubit_logics.dart';
import 'package:travel_app/presentation/cubit/app_cubits.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider<AppCubits>(
          create: (context) {
            DataServices dataServices = DataServicesImp();
            Repository repository = RepositoryImg(dataServices);
            DataUseCase dataUseCase = DataUseCase(repository);
            AppCubits appCubits = AppCubits(dataUseCase);

            return appCubits;
          },
          child: const AppCubitLogics(),
        ));
  }
}
