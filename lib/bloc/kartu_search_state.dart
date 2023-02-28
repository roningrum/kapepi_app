import 'package:kapepi_app/model/kartu.dart';

class KartuSearchState{
  final bool isLoading;
  final Data? data;
  final bool hasError;
  
  const KartuSearchState({required this.isLoading, required this.data, required this.hasError});

  factory KartuSearchState.initial(){
    return const KartuSearchState(
      data: null,
      isLoading: false,
      hasError: false,
    );
  }

  factory KartuSearchState.loading(){
    return const KartuSearchState(
      data: null,
      isLoading: true,
      hasError: false,
    );
  }

  factory KartuSearchState.success(Data? datas){
    return KartuSearchState(isLoading: false, data: datas, hasError: false);
  }

  factory KartuSearchState.error(){
    return const KartuSearchState(
      data: null,
      isLoading: false,
      hasError: true,
    );
  }

 @override
  String toString() =>
      'KartuSearchState {data: ${data.toString()}, isLoading: $isLoading, hasError: $hasError }';

}