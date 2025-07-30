import 'package:flutter/material.dart';

class CropsCntr extends StatefulWidget {
  const CropsCntr({super.key});

  @override
  State<CropsCntr> createState() => _CropsCntrState();
}

class _CropsCntrState extends State<CropsCntr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Row(
        children: [
          Container(
            width: 120,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16))
            ),
          )
        ],
      ),
    );
  }
}