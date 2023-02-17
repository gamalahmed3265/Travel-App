import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:travel_app/domain/model/data_model.dart';
import 'package:travel_app/domain/use_case/data_use_case.dart';
import 'package:travel_app/presentation/cubit/app_cubit_states.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits(this.data) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataUseCase data;
  late final places;

  void getData() async {
    try {
      emit(LoadingState());
      places = await data.execute();

      print("AppCubits ---------- $places");

      emit(LoadedState(places));
    } catch (e) {}
  }

  detailPage(DataModel data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(LoadedState(places));
  }
}
