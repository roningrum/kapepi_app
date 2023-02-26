import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kapepi_app/theme.dart';
import 'package:kapepi_app/views/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteApp,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/kapepi-logo.svg',
                  width: 150.0,
                  height: 150.0,
                ),
                const SizedBox(height: 16.0),
                Text(
                  'Kapepi',
                  style: fontTitle
                      .copyWith(color: greenPrimary)
                      .copyWith(fontSize: 24.0),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Kartu Puskesmas Pintar',
                  style: fontInfo
                      .copyWith(color: blackFont, fontWeight: FontWeight.w400)
                      .copyWith(fontSize: 16.0),
                )
              ],
            ),
          ),
        ));
  }
}
