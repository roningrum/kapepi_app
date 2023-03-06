import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kapepi_app/model/kartu.dart';
import 'package:kapepi_app/repository/network_repo.dart';
import 'package:kapepi_app/theme.dart';
import 'package:kapepi_app/widget/kartu_home_initial_page.dart';
import 'package:kapepi_app/widget/kartu_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  NetworkRepo networkRepo = NetworkRepo();
  late Data data;
  TextEditingController noRegController = TextEditingController();
  late String noReg;

  // @override
  // void initState() {
  //   super.initState();
  //  if(noReg != null ){
  //    getData();
  //  }
  //  else{
  //    print('Data Kosong');
  //  }
  //   // print(noReg);
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteApp,
        appBar: PreferredSize(
         preferredSize: const Size(100,80),
          child: SafeArea(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(right: 16.0, left: 16.0, top: 24.0),
              child: TextField(
                cursorColor: greenSecondary,
                controller: noRegController,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  hintText: 'Cari Nomor RM',
                  hintStyle: fontRegular.copyWith(
                      color: blackFont,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Icon(Icons.search, color: greenSecondary),
                  ),
                  filled: true,
                  fillColor: whiteApp,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(color: blackFont, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(color: greenSecondary, width: 1.5),
                  ),
                ),
                onChanged: (string){
                  noReg = noRegController.text.toString();
                  if (kDebugMode) {
                    print('NoReg == $noReg');
                  }
                },
                onSubmitted: (value){
                  if (kDebugMode) {
                    print('NoReg Submited == $noReg');
                  }
                  getData(noReg);
                },
              ),
            ),
           ),
        ),
        // body: const KartuHomeInitialPage());
       body: Padding(
         padding: const EdgeInsets.all(0.0),
         child: noRegController.text.isNotEmpty ? KartuWidget(data) : const KartuHomeInitialPage(),
       )
    );
  }

  void getData(String noReg) async{
    var response = await networkRepo.fetchResult(noReg);
    data = response!;
    setState(() {
      if(data != null){
        if (kDebugMode) {
          print(response);
        }
      }
      else{
        if (kDebugMode) {
          print('Tidak ada data');
        }
      }
    });

  }


}
