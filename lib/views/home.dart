import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kapepi_app/theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              child: TextFormField(
                cursorColor: greenSecondary,
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
              ),
            ),
           ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child:  Column(
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
        ));
  }
}
