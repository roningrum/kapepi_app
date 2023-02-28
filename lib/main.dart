import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kapepi_app/views/kartu_scan_detail.dart';
import 'package:kapepi_app/views/splashscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark // transparent status bar
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
            
        ),
        inputDecorationTheme: const InputDecorationTheme(
              contentPadding: EdgeInsets.symmetric(vertical: 15),
            ),
      ),
      home: const KartuScanDetail(),
    );
  }
}

