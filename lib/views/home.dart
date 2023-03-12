import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kapepi_app/model/kartu.dart';
import 'package:kapepi_app/repository/local/databaseHelper.dart';
import 'package:kapepi_app/repository/local/pasien.dart';
import 'package:kapepi_app/repository/network_repo.dart';
import 'package:kapepi_app/theme.dart';
import 'package:kapepi_app/views/history_search_page.dart';
import 'package:kapepi_app/widget/kartu_home_initial_page.dart';
import 'package:kapepi_app/widget/kartu_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  NetworkRepo networkRepo = NetworkRepo();
  Data? data;
  TextEditingController noRegController = TextEditingController();
  late String noReg;
  late DatabaseHelper databaseHelper;

  @override
  void initState() {
    super.initState();
   databaseHelper = DatabaseHelper();
   databaseHelper.initializeDB();
  }

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
                  suffixIcon: noRegController.text.isEmpty? null :IconButton(
                    onPressed: (){
                      setState(() {
                        noRegController.clear();
                        const KartuHomeInitialPage();
                      });

                    },
                    icon: const Icon(Icons.clear),
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
         child: noRegController.text.isNotEmpty && data!=null ? KartuWidget(data!) : const KartuHomeInitialPage(),
       ),
      floatingActionButton:  FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.push(context, MaterialPageRoute(builder: (context) => const HistorySearchPage()));
        },
        backgroundColor: greenSecondary,
        child: const Icon(Icons.history),
      ),
    );
  }

  void getData(String noReg) async{
    var response = await networkRepo.fetchResult(noReg);
    setState(() {
      if(response != null){
        data = response;
        var pasien = Pasien();
        pasien.nik = data!.nik;
        pasien.noRM = data!.noReg;
        pasien.nama = data!.nama;
        pasien.kk = data!.kk;
        pasien.ibu = data!.ibu!.isEmpty?'-': data!.ibu;
        pasien.jenisKelamin = data!.jkl;
        pasien.tglLahir = data!.tgLahir;
        pasien.tLahir = data!.tLahir;
        pasien.alamat = data!.alamat;
        pasien.kelurahan = data!.kelurahan;
        pasien.puskesmas = data!.puskesmas;
        pasien.caraBayar = data!.caraBayar;
        pasien.status = data!.status;

        databaseHelper.saveDataPasien(pasien);
        if (kDebugMode) {
          print(pasien);
          print(response);
        }
      }
      else{
        Fluttertoast.showToast(msg: 'Data Tidak Ditemukan Silakan Cari Lagi', toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            textColor: whiteApp,
            fontSize: 16.0
        );
      }
    });

  }
}
