import 'package:bloc_practices/domain/models/savedata.dart';
import 'package:bloc_practices/presentation/bloc/connectivity_bloc/bloc.dart';
import 'package:bloc_practices/presentation/bloc/connectivity_bloc/state.dart';
import 'package:bloc_practices/presentation/bloc/home_screen_bloc/bloc.dart';
import 'package:bloc_practices/presentation/bloc/home_screen_bloc/event.dart';
import 'package:bloc_practices/presentation/bloc/home_screen_bloc/state.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/models/getDetails.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  int page=1;
  GetBloc getBloc = GetBloc();
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_scrollListener);
    getBloc.add(GetIntialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Assignment",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.black),),
        centerTitle: true,
      ),
      body: BlocBuilder<InternetBloc,InternetState>(

        builder: (BuildContext context, state) {
          if(state is InternetLossedState){
          //  final sucessState = state as InternetLossedState;
            // final data = state.box.values.toList().cast<SaveData>();
            final data = state.box;
            List<UserDataModel> posts= List.generate(data.length, (index)=> UserDataModel(
                 id: data[index].id,
                 imageUrl: "assets/images/Bouteille.jpg",
                 name: data[index].name,
                 ph: data[index].ph,
                 description: data[index].description
             ));
            return Column(
              children:[
              Expanded(child: buildPostListView(posts,isLoaded: false))
                ]
            );
          }
          if(state is InternetGainedState){
            return BlocBuilder<GetBloc,GetState>(
              bloc: getBloc,
              builder: (BuildContext context, GetState state) {
                switch (state.runtimeType){
                  case GetLoadingState:
                    return const Center(child:CircularProgressIndicator());
                  case GetLoaderState :
                    final sucessState = state as GetLoaderState;
                    return  buildPostListView(state.beers);
                  case  GetErrorState:
                    final errorState = state as GetErrorState;
                    return Text(errorState.error);
                  default:
                    return Container(height: 100,width: 100,color: Colors.red);
                }
              },

            );
          }
         else{
           return Container(
             height: 50,
             width: 50,
             color: Colors.blueAccent,
           );
          }
        },
      ),
    );
  }
  Widget buildPostListView(List<UserDataModel> posts,{bool isLoaded = true}){
     return ListView.builder(
       padding: EdgeInsets.all(10.0),
        controller: scrollController,
         itemCount:posts.length,itemBuilder: (context,index){
       return Padding(
         padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
         child: Container(
               decoration: BoxDecoration(
                 color: Colors.grey.shade100,
                 border: Border.all(color: Colors.grey.shade400,width:2),
                 borderRadius: BorderRadius.circular(15)
               ),
           child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   SizedBox(width: 5,),
                   Padding(
                     padding: const EdgeInsets.only(top: 1.0),
                     child: CircleAvatar(
                         backgroundColor: Colors.blueAccent,
                         radius: 15,
                         child: Text(posts[index].id.toString() ,style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black,fontSize: 16,))),
                   ),
                   SizedBox(width: 5,),
                   Expanded(child: Text(posts[index].name.toString(),style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 18,decoration: TextDecoration.underline),)),

                 ],
               ),
               SizedBox(height: 10,),
               Container(
                 height: MediaQuery.of(context).size.height*0.35,
                   width:double.infinity,
                   
                   child:isLoaded? CachedNetworkImage(imageUrl: posts[index].imageUrl.toString(),):Image.asset(posts[index].imageUrl.toString(),)),
               SizedBox(height: 5,),
               Padding(
                 padding: const EdgeInsets.all(5.0),
                 child: Text(posts[index].description.toString(),style: TextStyle(fontSize: 14,color: Colors.black),),
               )
             ],
           ),
         ),
       );

     });
  }
  void _scrollListener() {
    if(scrollController.position.pixels == scrollController.position.maxScrollExtent){
    getBloc.add(GetAddMoreData());
    //  print("call");
    }
    else{
      //print("don't call");
    }
  }
}