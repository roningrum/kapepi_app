import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kapepi_app/bloc/kartu_bloc.dart';
import 'package:kapepi_app/bloc/kartu_search_event.dart';
import 'package:kapepi_app/bloc/kartu_search_state.dart';
import 'package:kapepi_app/repository/network_repo.dart';
import 'package:kapepi_app/theme.dart';
import 'package:kapepi_app/widget/kartu_home_initial_page.dart';
import 'package:kapepi_app/widget/kartu_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final kartuSearchBloc = BlocProvider.of<KartuSearchBloc>(context);
    var noRegController = TextEditingController();
    var noReg = noRegController.toString();

    final _formKey = GlobalKey<FormState>();

    return Scaffold(
        backgroundColor: whiteApp,
        body: SafeArea(
          child: BlocBuilder<KartuSearchBloc, KartuSearchState>(
              builder: (context, state) {
            if (state is KartuSearchInitial) {
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Form(
                      key: _formKey,
                      child: Container(
                        width: double.infinity,
                        height: 56,
                        margin: const EdgeInsets.only(
                            right: 16.0, left: 16.0, top: 24.0),
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
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              borderSide:
                                  BorderSide(color: blackFont, width: 1.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              borderSide:
                                  BorderSide(color: greenSecondary, width: 1.5),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          onFieldSubmitted: (value) {
                           if (kDebugMode) {
                             print('no reg ${value.toString()}');
                           }
                          },
                        ),
                      ),
                    ),
                    const KartuHomeInitialPage()
                  ]);
            }

            if (state is KartuSearchIsLoaded) {
              return KartuWidget(state.getData, noRegController.text);
            }
            return const Text("Error", style: TextStyle(color: Colors.red));
          }),
        ));
  }
}
