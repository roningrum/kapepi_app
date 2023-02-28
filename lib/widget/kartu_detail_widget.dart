import 'package:flutter/material.dart';
import 'package:kapepi_app/theme.dart';
import 'package:qr_flutter/qr_flutter.dart';

class KartuDetailWidget extends StatelessWidget {
  const KartuDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
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
                'Kartu Periksa Puskesmas A',
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
                    child: Text('Nadia Smith', style: fontRegular.copyWith(
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
                    child: Text('Samuel Smith', style: fontRegular.copyWith(
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
                    child: Text('Laura Smith', style: fontRegular.copyWith(
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
                    child: Text('Los Angeles, 15 Mei 2003', style: fontRegular.copyWith(
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
                    child: Text('Perempuan', style: fontRegular.copyWith(
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
                    child: Text('Perumahan Bukit Indah', style: fontRegular.copyWith(
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
                    child: Text('Perumahan Bukit Indah', style: fontRegular.copyWith(
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
                    child: Text('Puskesmas A', style: fontRegular.copyWith(
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
                data: '909994999',
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
                      text: '909994999',
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
    );
  }
}
