import 'package:flutter/material.dart';
import 'package:kapepi_app/repository/local/pasien.dart';
import 'package:kapepi_app/theme.dart';

class RiwayatWidget extends StatelessWidget {
  final Pasien data;

  const RiwayatWidget(this.data,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity ,
      height: 84,
      margin: const EdgeInsets.only(top: 16.0),
      child: kartuSearchResult(data, context),
    );
  }

  Widget kartuSearchResult(Pasien data, BuildContext context){
    return  Card(
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            border: Border.all(color: blackFont, width: 1.5),
            borderRadius: const BorderRadius.all(Radius.circular(8.0))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                text: TextSpan(
                  style: fontRegular,
                  children:[
                    TextSpan(
                      text: 'No Reg',
                      style: fontRegular.copyWith(color: greenSecondary, fontWeight: FontWeight.w500),
                    ),
                    const WidgetSpan(child: SizedBox(width:8.0,)),
                    TextSpan(
                      text: data.noRM,
                      style: fontRegular.copyWith(
                          color: greenPrimary, fontWeight: FontWeight.w500),
                    ),
                  ],
                )),
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
          ],
        ),
      ),
    );
  }
}



