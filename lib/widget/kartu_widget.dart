import 'package:flutter/material.dart';
import 'package:kapepi_app/theme.dart';

class KartuWidget extends StatelessWidget {
  const KartuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  children: [
                    Text(
                      'No Reg',
                      style: fontRegular.copyWith(color: greenSecondary, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      '900000',
                      style: fontRegular.copyWith(
                          color: greenPrimary, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Image.asset('assets/images/qr_code_scan.png',
                    width: 55, height: 46)
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
                    text: 'Nadia Smith',
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
                    text: 'Baru',
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
                    text: 'BPJS',
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
