import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme.dart';

class KartuHomeInitialPage extends StatelessWidget {
  const KartuHomeInitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // KartuWidget()
          SvgPicture.asset('assets/images/petugas.svg', height: 200),
          const SizedBox(height: 16.0),
          Text(
            'Selamat Datang',
            style: fontTitle.copyWith(
                fontSize: 18.0,
                color: greenPrimary,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Lakukan pencarian nomor registrasi pada kolom pencarian nomor registrasi ',
            style: fontInfo.copyWith(fontSize: 14.0, color: blackFont),
          ),
        ],
      ),
    );
  }
}
