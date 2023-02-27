import 'package:kapepi_app/model/kartu.dart';
import 'package:kapepi_app/repository/provider/api_provider.dart';

class NetworkRepo{
  final _provider = ApiProvider();

  Future<Kartu?>fetchResult(String noReg){
    return _provider.showRMResult(noReg);
  }
}

class NetworkError extends Error{}