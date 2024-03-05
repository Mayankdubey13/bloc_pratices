 import '../../../domain/models/getDetails.dart';

abstract class GetState{

}

class GetIntialState extends GetState{



}
class GetLoaderState extends GetState{

  List<UserDataModel> beers;

   GetLoaderState({required this.beers});

}
class GetLoadingState extends GetState{

}
class GetErrorState extends GetState{
   String error ;
   GetErrorState({required this.error});
}
 // class InternetLossedState extends GetState{
 //
 //
 //
 // }
 // class InternetGainedState  extends GetState{
 //
 // }