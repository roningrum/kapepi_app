import 'package:equatable/equatable.dart';
import 'package:kapepi_app/model/kartu.dart';

class KartuSearchState extends Equatable{
  @override
  List<Object?> get props =>[];
}
class KartuSearchInitial extends KartuSearchState{}
class KartuSearchIsLoading extends KartuSearchState{}
class KartuSearchIsLoaded extends KartuSearchState{
  final _data;
  KartuSearchIsLoaded(this._data);
  Data get getData => _data;
  @override
  List<Object?> get props =>[_data];

}

class KartuSearchError extends KartuSearchState{}