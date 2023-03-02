import 'package:bloc/bloc.dart';
import 'package:kapepi_app/bloc/kartu_search_event.dart';
import 'package:kapepi_app/bloc/kartu_search_state.dart';
import 'package:kapepi_app/repository/network_repo.dart';

class KartuSearchBloc extends Bloc<KartuSearchEvent, KartuSearchState>{

  NetworkRepo networkRepo;

  KartuSearchBloc(this.networkRepo) : super(KartuSearchInitial()){
    on<KartuSearchEvent>((event, emit) async{
      emit(KartuSearchIsLoading());
      try{
        final datas = await networkRepo.fetchResult(event.noReg);
        emit(KartuSearchIsLoaded(datas));
      } catch(e){
        emit(KartuSearchError());
      }
    });
  }
}