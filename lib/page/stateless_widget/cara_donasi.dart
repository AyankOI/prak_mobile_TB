import 'package:flutter/material.dart';

class HowToDonate extends StatelessWidget {
  const HowToDonate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cara Donasi',
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  child: const Text(
                    '1. Transfer donasi ke nomor rekening atau dana berikut :',
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 170,
                          child: Column(
                            children: [
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGqRZPdCTzg9A025wCcXJ8bEkqQOXQs4YlyrG4Sqw7j61_z9gaZq-SnegxjGsA7q-4Lw&usqp=CAU',
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Center(
                                child: Text('DANA = 089663466221'),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 170,
                          child: Column(
                            children: [
                              Image.network(
                                'https://ika.um.ac.id/wp-content/uploads/2019/06/Logo-BRI.jpg',
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Center(
                                child: Text('BRI = 6912-07-261445-23-8'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: Text(
                        'atas nama : Ayang Tio',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  child: const Text(
                    '2. Simpan bukti transaksi (screenshot/gambar kamera)',
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  width: double.infinity,
                  child: const Text(
                    '3. Konfirmasi dengan klik tombol "Donasi Sekarang"',
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
