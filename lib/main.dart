import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:sac_app/available_crps.dart';
// import 'package:sac_app/advise.dart';
// import 'package:sac_app/market.dart';

void main() {
  if (kIsWeb) {
    runApp(DevicePreview(builder: (context) => SacApp()));
  } else {
    runApp(SacApp());
  }
}

class SacApp extends StatelessWidget {
  const SacApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MarketPage(),
      // home: AdvisePage(),
      home: AvailableCrps(),
    );
  }
}
