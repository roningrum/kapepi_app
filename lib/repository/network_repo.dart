import 'package:kapepi_app/model/kartu.dart';
import 'package:kapepi_app/repository/provider/api_provider.dart';

class NetworkRepo{
  final _provider = ApiProvider();

  Future<Data?> fetchResult(String noReg) async{
    var response =  await _provider.showRMResult(noReg);
    try{
      var data = response?.data;
      print(data);
      return data;
    } catch(e){
      return null;
    }
  }
}