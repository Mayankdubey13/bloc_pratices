import 'dart:async';
import 'package:bloc_practices/main.dart';
import 'package:bloc_practices/presentation/bloc/connectivity_bloc/state.dart';
import 'package:bloc_practices/presentation/bloc/home_screen_bloc/event.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/local_db_services/local_db_services.dart';
import 'event.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  Connectivity connectivity = Connectivity();
  StreamSubscription? connectivitySubscription;
  InternetBloc() : super(InternetIntialState()) {
    on<InternetLossedEvent>(internetLossedEvent);
    on<InternetGainedEvent>(internetGainedEcent);

    connectivitySubscription =
        connectivity.onConnectivityChanged.listen((result) {
          debugPrint("==============?$result");
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        add(InternetGainedEvent());
      } else {
        add(InternetLossedEvent());
      }
    });
  }

  @override
  Future<void> close() {
    connectivitySubscription?.cancel();

    // TODO: implement close

    return super.close();
  }

  FutureOr<void> internetGainedEcent(
      InternetGainedEvent event, Emitter<InternetState> emit) {

          emit(InternetGainedState());
  }

  FutureOr<void> internetLossedEvent(
        InternetLossedEvent event, Emitter<InternetState> emit) {
        final box = Boxes.getData();
        final updatedData = box.get("data save") ?? [];
         print(updatedData);
    emit(InternetLossedState(box: updatedData));
  }
}
