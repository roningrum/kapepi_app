import 'package:flutter/material.dart';
import 'package:kapepi_app/repository/local/pasien.dart';
import 'package:kapepi_app/theme.dart';
import 'package:kapepi_app/views/riwayat_search_detail.dart';
import 'package:kapepi_app/widget/riwayat_widget.dart';

import '../repository/local/databaseHelper.dart';

class HistorySearchPage extends StatefulWidget {
  const HistorySearchPage({Key? key}) : super(key: key);

  @override
  State<HistorySearchPage> createState() => _HistorySearchPageState();
}

class _HistorySearchPageState extends State<HistorySearchPage> {

  DatabaseHelper databaseHelper = DatabaseHelper();

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
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                  future: databaseHelper.getPasienRiwayat(),
                  builder: (context, AsyncSnapshot<List<Pasien>> snapshot){
                    if(snapshot.hasData && snapshot.data!.isNotEmpty){
                      return ListView.builder(
                          itemCount: snapshot.data?.length,
                          itemBuilder: (context, i){
                            return Dismissible(
                              key: ValueKey<int>(snapshot.data![i].id!),
                                direction: DismissDirection.endToStart,
                                onDismissed:  (DismissDirection direction) async {
                                  databaseHelper.hapusRiwayat(snapshot.data![i].id!);
                                  setState(() {
                                    snapshot.data!.remove(snapshot.data![i]);
                                  });
                                },
                                background: Container(
                                    color: const Color(0xffC60C30),
                                    alignment: Alignment.centerRight,
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: const Icon(Icons.delete_forever)
                                ),

                                child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => RiwayatKartuSearchDetail(snapshot.data![i])));
                                    },
                                    child: RiwayatWidget(snapshot.data![i])));
                          }
                      );
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
