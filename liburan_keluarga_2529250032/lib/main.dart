import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Liburan Keluarga'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://media.istockphoto.com/id/169977992/photo/yellow-tulips.jpg?s=612x612&w=0&k=20&c=0XGWY6p0HRlp_dAAB_eFmuXUQGcz9mVZHp5LHrNeLig=',
                  width: double.infinity,
                  height: 190,
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 22, 16, 10),
                child: Text(
                  'Tentang Taman',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Taman bunga menjadi tempat rekreasi yang menawarkan pemandangan berwarna-warni dan suasana yang menyegarkan. Pengunjung dapat berjalan santai, berfoto bersama keluarga, serta menikmati waktu di ruang terbuka',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.6,
                    color: Color.fromARGB(221,1,23,6),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                // color: const Color.fromARGB(255, 113, 192, 119),
                padding: const EdgeInsets.all(16),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rencana Kunjungan',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 18),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: Colors.green),
                        SizedBox(width: 12),
                        Text('Lokasi'),
                        Spacer(),
                        Text(
                          'Bangungan, Semarang',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )
                        ),
                      ],
                    ),
                    Divider(height: 28),
                    Row(
                      children: [
                        Icon(Icons.access_time,color:Colors.green),
                        SizedBox(width: 12),
                        Text('Jam Buka'),
                        Spacer(),
                        Text(
                          '08.00-17.00',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Divider(height: 28),
                    Row(
                      children: [
                        Icon(Icons.confirmation_num),
                        SizedBox(width: 12),
                        Text(
                          'Harga Tiket'
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
