import 'package:bloc/bloc.dart';
import 'package:tour/cubit/app_cubit_states.dart';
import 'package:tour/models/data_models.dart';
import 'package:tour/services/data_services.dart';

class AppCubits extends Cubit<CubitStates >{
  AppCubits({required this.data}) : super(InitialState()){
    emit(WelcomeState());

  }
  final Dataservices data;
  late final places;
  void getData() async{
    try{
      emit(LoadingState());
      places =await data.getInfo();
      emit(LoadedState(places));
    }catch(e){

    }
  }
        detailPage(DataModel data){
        emit(DetailState(data));
        }
        getHome(){
          emit(LoadedState(places));
        }


}