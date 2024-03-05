import 'dart:async';
import 'dart:convert';
import 'package:bloc_practices/data/local_db_services/local_db_services.dart';
import 'package:bloc_practices/data/respository_impl/respository_impl.dart';
import 'package:bloc_practices/domain/models/getDetails.dart';
import 'package:bloc_practices/domain/models/savedata.dart';
import 'package:bloc_practices/domain/repository/get_respository.dart';
import 'package:bloc_practices/presentation/bloc/home_screen_bloc/event.dart';
import 'package:bloc_practices/presentation/bloc/home_screen_bloc/state.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class GetBloc extends Bloc<GetEvent,GetState> {
  Connectivity connectivity = Connectivity();
  StreamSubscription? connectivitySubscription;
  List<UserDataModel> list =[];
  int page=1;
  List<SaveData> saveDataList=[];
  final box = Boxes.getData();
  GetBloc():super(GetIntialState()){
    on<GetIntialEvent>(getInitialEvent);
     on<GetAddMoreData>(getAddMoreData);

    // on<InternetLossedEvent>(internetLossedEvent);
    // on<InternetGainedEvent>(internetGainedEcent);

    // connectivitySubscription =
    //     connectivity.onConnectivityChanged.listen((result) {
    //       debugPrint("==============?$result");
    //       if (result == ConnectivityResult.mobile ||
    //           result == ConnectivityResult.wifi) {
    //         add(GetIntialEvent());
    //       } else {
    //         add(InternetLossedEvent());
    //       }
    //     });
  }

  GetRespository getRespository = GetRespositoryImpl();

  FutureOr<void> getInitialEvent(GetIntialEvent event, Emitter<GetState> emit) async{
    try {
      emit(GetLoadingState());
      List<dynamic> data = await getRespository.getApi(page:page);
    //  await getRepository.getApi(page: event.page);
    // print(saveDataList);
    //   final boxes = Boxes.getData();
    //   List.generate(boxes.length, (index) {
    //       Boxes.deleteData(index);
    //   });
     // final box = Boxes.getData();
     list = data.map((e){
       saveDataList.add(SaveData.fromJson(e));
     //  final box = Boxes.getData();
     //  box.add(saveData);
       //dynamic saveData = SaveData.fromJson(e);
       box.put("data save", saveDataList);
       // Save JSON data to Hive
       //saveData.save();
      // print(jsonEncode(box.getAt(0)));
      // print(e);
        return UserDataModel.fromJson(e);
      }).toList();
     //print(list.runtimeType);
      emit(GetLoaderState(beers: list));
    }
    catch(e){
      emit(GetErrorState(error: e.toString()));
    }
  }
  FutureOr<void> getAddMoreData(GetAddMoreData event, Emitter<GetState> emit) async{
    try {
      List<dynamic> data =  await getRespository.getApi(page: ++page);
      List<UserDataModel> myResponse = data.map((e){
        saveDataList.add(SaveData.fromJson(e));
       // dynamic saveData = SaveData.fromJson(e);
       // final box = Boxes.getData();
        box.put("data save",saveDataList); // Save JSON data to Hive
      //  saveData.save();
        return UserDataModel.fromJson(e);
      }).toList();
      list.addAll(myResponse);
      emit(GetLoaderState(beers: list));
    }
    catch(e){
         emit(GetErrorState(error: e.toString()));
    }
  }
  // FutureOr<void> internetGainedEcent(
  //     InternetGainedEvent event, Emitter<GetState> emit) {
  //   emit(InternetGainedState());
  // }
  //
  // FutureOr<void> internetLossedEvent(
  //     InternetLossedEvent event, Emitter<GetState> emit) {
  //   emit(InternetLossedState());
  // }

}
