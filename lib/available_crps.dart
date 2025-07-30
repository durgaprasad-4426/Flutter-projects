import 'package:flutter/material.dart';
import 'package:sac_app/Widgets/Crops_cntr.dart';

class AvailableCrps extends StatefulWidget {
  const AvailableCrps({super.key});

  @override
  State<AvailableCrps> createState() => _AvailableCrpsState();
}

class _AvailableCrpsState extends State<AvailableCrps> {
  final TextEditingController _cntrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf9fafc),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/logo1.png',
            width: 100,
            height: 100,
            fit: BoxFit.fill,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Smart AgriConnect",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Connenting Framers Directly',
              style: TextStyle(color: Colors.black45, fontSize: 14),
            ),
          ],
        ),
        actions: [
          Icon(Icons.notifications_outlined, size: 28),
          SizedBox(width: 16),
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: Colors.orange[600],
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 302,
                        height: 50,
                        child: TextFormField(
                          // textAlign: TextAlign.justify,
                          controller: _cntrl,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.location_on_outlined, size: 32),
                      ),
                    ],
                  ),
                  Text(
                    "Available Crops",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CropsCntr(
                    img: AssetImage('assets/paddy.png'),
                    txt1: 'Ramesh Patel',
                    txt2: 'Paddy Farmer',
                    txt3: 'Bandarulanka,\nEast Godavari,\nAndhra Pradesh.',
                    c1: Colors.grey,
                    c2: Colors.green,
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/wheat.png'),
                    txt1: 'Ganesh Thakur',
                    txt2: 'Wheat Farmer',
                    txt3: 'Shahpur,\nBetul,\nMadhya Pradesh.',
                    c1: const Color.fromARGB(255, 248, 180, 77),
                    c2: Colors.blue,
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/tomato.png'),
                    txt1: 'Nagesh Reddy',
                    txt2: 'Tomato Farmer',
                    txt3: 'Manvi,\nRaichur,\nKarnataka.',
                    c1: const Color.fromARGB(255, 248, 123, 123),
                    c2: Colors.red,
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/onion.png'),
                    txt1: 'Shankar Pawar',
                    txt2: 'Onion Farmer',
                    txt3: 'Lasalgaon,\nNashik,\nMaharashtra.',
                    c1: Colors.lightBlueAccent,
                    c2: Colors.blue,
                    c3: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
