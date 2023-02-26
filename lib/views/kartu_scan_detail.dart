import 'package:flutter/material.dart';
import 'package:kapepi_app/theme.dart';

import '../widget/kartu_detail_widget.dart';

class KartuScanDetail extends StatefulWidget {
  const KartuScanDetail({super.key});

  @override
  State<KartuScanDetail> createState() => _KartuScanDetailState();
}

class _KartuScanDetailState extends State<KartuScanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xff76B77F),
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: whiteApp),
    onPressed: () => Navigator.of(context).pop(),
  ), 
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,
              colors: [Color(0xff76B77F), Color(0xff528F95)]
            )
      ),
       child: const Padding(
         padding: const EdgeInsets.all(8.0),
         child: KartuDetailWidget(),
       ),
      )
    );
  }
}