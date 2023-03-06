import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kapepi_app/theme.dart';
import 'package:kapepi_app/views/kartu_scan_detail.dart';

import '../model/kartu.dart';

class KartuWidget extends StatelessWidget {
  final Data data;

  const KartuWidget(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity ,
      height: 150,
      margin: const EdgeInsets.only(top: 24.0, right: 16.0, left: 16.0),
      child: data != null ? KartuSearchResult(data, context) : KartuSearchError(context),
    );
  }

  Widget KartuSearchError (BuildContext context){
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // KartuWidget()
          SvgPicture.asset('assets/images/error-search.svg', height: 200),
          const SizedBox(height: 16.0),
          Text(
            'Waduh! Tidak Ketemu',
            style: fontTitle.copyWith(
                fontSize: 18.0,
                color: greenPrimary,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Silakan Coba Lagi',
            style: fontInfo.copyWith(fontSize: 14.0, color: blackFont),
          ),
        ],
      ),
    );
  }

  Widget KartuSearchResult(Data data, BuildContext context){
    return  Card(
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            border: Border.all(color: blackFont, width: 1.5),
            borderRadius: const BorderRadius.all(Radius.circular(8.0))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'No Reg',
                      style: fontRegular.copyWith(color: greenSecondary, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      data.noReg!,
                      style: fontRegular.copyWith(
                          color: greenPrimary, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => KartuScanDetail(data)));
                  },
                  child: Image.asset('assets/images/qr_code_scan.png',
                      width: 55, height: 46),
                )
              ],
            ),
            const SizedBox(height: 8.0),
            RichText(
              text: TextSpan(
                style: fontRegular,
                children:[
                  TextSpan(
                    text: 'Nama',
                    style: fontRegular.copyWith(color: greenSecondary, fontWeight: FontWeight.w500),
                  ),
                  const WidgetSpan(child: SizedBox(width:8.0,)),
                  TextSpan(
                    text: data.nama,
                    style: fontRegular.copyWith(
                        color: greenPrimary, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    style: fontRegular,
                    children:[
                      TextSpan(
                          text: 'Status',
                          style: fontRegular.copyWith(color: greenSecondary, fontWeight: FontWeight.w500)),
                      const WidgetSpan(child: SizedBox(width:8.0,)),
                      TextSpan(
                        text: data.status,
                        style: fontRegular.copyWith(
                            color: greenPrimary, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: fontRegular,
                    children:[
                      TextSpan(
                          text: 'Metode Pembayaran',
                          style: fontRegular.copyWith(color: greenSecondary, fontWeight: FontWeight.w500)),
                      const WidgetSpan(child: SizedBox(width:8.0,)),
                      TextSpan(
                        text: data.caraBayar,
                        style: fontRegular.copyWith(
                            color: greenPrimary, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}



