import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kapepi_app/theme.dart';
import 'package:kapepi_app/widget/kartu_home_initial_page.dart';

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
        body: const KartuHomeInitialPage());
  }
}
