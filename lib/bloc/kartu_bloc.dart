import 'package:bloc/bloc.dart';
import 'package:kapepi_app/bloc/kartu_search_event.dart';
import 'package:kapepi_app/bloc/kartu_search_state.dart';
import 'package:kapepi_app/model/kartu.dart';
import 'package:kapepi_app/repository/network_repo.dart';

class KartuSearchBloc extends Bloc<KartuSearchEvent, KartuSearchState>{

  KartuSearchBloc(super.initialState);

  final NetworkRepo _networkRepo = NetworkRepo();

  @override
  void onTransition(Transition<KartuSearchEvent, KartuSearchState> transition) {
    super.onTransition(transition);
    print(transition.toString());
  }

  Stream<KartuSearchState> mapEventToState(KartuSearchEvent event) async* {
    yield KartuSearchState.loading();

    try{
      Data? datas = await _networkRepo.fetchResult(event.noReg);
      yield KartuSearchState.success(datas);
    }
    catch(_){
      yield KartuSearchState.error();
    }
  }
}