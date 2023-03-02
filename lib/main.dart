import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kapepi_app/bloc/kartu_bloc.dart';
import 'package:kapepi_app/repository/network_repo.dart';
import 'package:kapepi_app/views/home.dart';

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
    return BlocProvider<KartuSearchBloc>(
      create: (context)=>KartuSearchBloc(NetworkRepo()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            elevation: 0,

          ),
          inputDecorationTheme: const InputDecorationTheme(
                contentPadding: EdgeInsets.symmetric(vertical: 15),
              ),
        ),
        home: const Home(),
      ),
    );
  }
}

