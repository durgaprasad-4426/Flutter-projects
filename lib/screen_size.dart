import 'package:flutter/material.dart';

class ScreenSize extends StatefulWidget {
  const ScreenSize({super.key});

  @override
  State<ScreenSize> createState() => _ScreenSizeState();
}

class _ScreenSizeState extends State<ScreenSize> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.sizeOf(context).height;
    double wi = MediaQuery.sizeOf(context).width;
    // Size size = MediaQuery.sizeOf(context).aspectRatio;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: Text("${wi.toInt()} X ${hi.toInt()}"))],
      ),
    );
  }
}
