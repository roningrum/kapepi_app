import 'package:flutter/material.dart';
import 'package:kapepi_app/repository/local/pasien.dart';
import 'package:kapepi_app/theme.dart';
import 'package:qr_flutter/qr_flutter.dart';

class RiwayatKartuSearchDetail extends StatelessWidget {
  final Pasien data;
  const RiwayatKartuSearchDetail (this.data, {super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:const Color(0xff76B77F),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: whiteApp),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                  colors: [Color(0xff76B77F), Color(0xff528F95)]
              )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                //set border radius more than 50% of height and width to make circle
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 24.0),
                      Text(
                        'Kartu Periksa Puskesmas ${data.puskesmas}',
                        style: fontTitle.copyWith(color: greenPrimary, fontSize: 18.0),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 18.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text('Nama', style: fontRegular.copyWith(
                                color: greenSecondary,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500)),
                          ),
                          Expanded(
                            child: Text('${data.nama}', style: fontRegular.copyWith(
                                color: greenPrimary,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500)),
                          ),

                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text('KK', style: fontRegular.copyWith(
                                color: greenSecondary,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500)),
                          ),
                          Expanded(
                            child: Text(data.kk!.isEmpty? '-': '${data.kk}', style: fontRegular.copyWith(
                                color: greenPrimary,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500)),
                          ),

                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text('Ibu', style: fontRegular.copyWith(
                                color: greenSecondary,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500)),
                          ),
                          Expanded(
                            child: Text(data.ibu!.isEmpty? '-' : '${data.ibu}' , style: fontRegular.copyWith(
                                color: greenPrimary,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500)),
                          ),

                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text('Tempat Tgl Lahir', style: fontRegular.copyWith(
                                color: greenSecondary,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500)),
                          ),
                          Expanded(
                            child: Text('${data.tLahir}, ${data.tglLahir}', style: fontRegular.copyWith(
                                color: greenPrimary,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500)),
                          ),

                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text('Jenis Kelamin', style: fontRegular.copyWith(
                                color: greenSecondary,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500)),
                          ),
                          Expanded(
                            child: Text('${data.jenisKelamin}', style: fontRegular.copyWith(
                                color: greenPrimary,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500)),
                          ),

                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text('Alamat', style: fontRegular.copyWith(
                                color: greenSecondary,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500)),
                          ),
                          Expanded(
                            child: Text('${data.alamat}', style: fontRegular.copyWith(
                                color: greenPrimary,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500)),
                          ),

                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text('Kelurahan', style: fontRegular.copyWith(
                                color: greenSecondary,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500)),
                          ),
                          Expanded(
                            child: Text('${data.kelurahan}', style: fontRegular.copyWith(
                                color: greenPrimary,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500)),
                          ),

                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text('Puskemas', style: fontRegular.copyWith(
                                color: greenSecondary,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500)),
                          ),
                          Expanded(
                            child: Text(data.puskesmas!, style: fontRegular.copyWith(
                                color: greenPrimary,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500)),
                          ),

                        ],
                      ),
                      const SizedBox(height: 24.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          QrImage(
                            data: data.noRM!,
                            size: 150,
                            gapless: false,
                            errorStateBuilder: (ctx, err) {
                              return const Center(
                                child: Text(
                                  "Uh oh! Something went wrong...",
                                  textAlign: TextAlign.center,
                                ),
                              );
                            },
                          ),
                          RichText(
                            text: TextSpan(
                              style: fontRegular,
                              children: [
                                TextSpan(
                                  text: 'No RM',
                                  style: fontRegular.copyWith(
                                      color: greenSecondary,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                const WidgetSpan(
                                    child: SizedBox(
                                      width: 16.0,
                                    )),
                                TextSpan(
                                  text: data.noRM,
                                  style: fontRegular.copyWith(
                                      color: greenPrimary,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          Text(
                            '*scan kode QR untuk konfirmasi kedatangan ke Puskemas',
                            style: fontRegular.copyWith(color: greenPrimary, fontSize: 14.0),
                            textAlign: TextAlign.start,
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              ),
            )

          ),
        )
    );
  }
}