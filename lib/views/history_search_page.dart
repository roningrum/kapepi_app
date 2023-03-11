import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kapepi_app/repository/local/pasien.dart';
import 'package:kapepi_app/theme.dart';

import '../repository/local/databaseHelper.dart';

class HistorySearchPage extends StatefulWidget {
  const HistorySearchPage({Key? key}) : super(key: key);

  @override
  State<HistorySearchPage> createState() => _HistorySearchPageState();
}

class _HistorySearchPageState extends State<HistorySearchPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DatabaseHelper.initializeDB();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteApp,
        iconTheme: IconThemeData(
          color: blackFont, //change your color here
        ),
        title: Text('Histori Pencarian', style: fontTitle.copyWith(color: blackFont, fontWeight: FontWeight.w600)),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 24.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text('Delete All', style: fontRegular.copyWith(color: greenSecondary,fontWeight: FontWeight.w400),),
            ),
            Expanded(
              child: FutureBuilder<List<Pasien>>(
                  future: DatabaseHelper.getPasienRiwayat(),
                  builder: (context, snapshot){
                    if(snapshot.hasData){
                      return ListView.builder(
                          itemCount: snapshot.data?.length,
                          itemBuilder: (context, i){
                            return Text('${snapshot.data?[i].nama}',style: fontRegular.copyWith(color: greenPrimary, fontSize: 14.0));
                          });
                    }
                    else{
                      return Center(
                        child: Text('Tidak ada data',style: fontRegular.copyWith(color: greenPrimary, fontSize: 14.0)),
                      );
                    }
              }),
            )
          ],
        ),
      ),
    );
  }
}
