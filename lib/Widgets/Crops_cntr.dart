import 'package:flutter/material.dart';

class CropsCntr extends StatelessWidget {
  final AssetImage img;
  final String txt1;
  final String txt2;
  final String txt3;
  const CropsCntr({super.key, required this.img, required this.txt1, required this.txt2, required this.txt3});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.green, width: 2)
      ),
      child: Row(
        spacing: 4,
        children: [
          Container(
            width: 130,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: img, fit: BoxFit.fill),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              border: Border.all(color: Colors.lightGreenAccent, width: 1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  txt1,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  txt2,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 48),
                  child: Text(
                    txt3,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
