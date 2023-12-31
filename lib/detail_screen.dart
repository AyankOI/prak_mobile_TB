import 'package:donasi_kebaikan/page/stateless_widget/cara_donasi.dart';
import 'package:flutter/material.dart';
import 'package:donasi_kebaikan/content/donation_data.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'content/user.dart';
import 'package:intl/intl.dart';

class DetailScreen extends StatelessWidget {
  final DonationData data;

  const DetailScreen({Key? key, required this.data}) : super(key: key);

  double persen() {
    return data.collectedDonation / data.donationTarget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Donasi Sekarang',
          ),
          centerTitle: true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.teal,
                      width: double.infinity,
                      height: 160,
                      child: Image.network(data.imageAsset, fit: BoxFit.fill),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.grey,
                      width: double.infinity,
                      height: 160,
                      child: CircularPercentIndicator(
                        radius: 74.75,
                        lineWidth: 20.0,
                        percent: persen(),
                        progressColor: Colors.deepOrange,
                        backgroundColor: Colors.deepOrange.shade100,
                        circularStrokeCap: CircularStrokeCap.butt,
                        center: Text(
                          '''Terpenuhi: ${(persen() * 100).round()}%''',
                          style: const TextStyle(
                              fontSize: 10.8, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Center(
                  child: Text(
                    data.donationTitle,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                //color: Colors.deepOrange,
                padding: const EdgeInsets.only(left: 30, right: 30),
                width: double.infinity,
                child: Text(data.description, textAlign: TextAlign.justify),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text('Terkumpul // Target'),
              const SizedBox(
                height: 5,
              ),
              Text(
                '${NumberFormat.currency(locale: 'id', symbol: 'Rp.', decimalDigits: 0).format(data.collectedDonation)} // ${NumberFormat.currency(locale: 'id', symbol: 'Rp.', decimalDigits: 0).format(data.donationTarget)}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.announcement_rounded),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return const HowToDonate();
                            }),
                          );
                        },
                        label: const Text('Cara Donasi'),
                      ),
                    ),
                    Center(
                      child: ElevatedButton.icon(
                        icon: Icon(Icons.mobile_friendly_rounded,
                            color: Colors.orangeAccent.shade100),
                        onPressed: () async {
                          String nameForURL =
                              userName.firstName.replaceAll(' ', '%20');
                          String titleForURL =
                              data.donationTitle.replaceAll(' ', '%20');
                          String url =
                              'https://wa.link/bl0ey7';
                          if (!await launchUrlString(
                            url,
                            mode: LaunchMode.externalApplication,
                          )) {
                            throw 'Could not launch';
                          }
                        },
                        label: Text(
                          'Donasi Sekarang',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.orangeAccent.shade100,
                              fontSize: 16.0),
                        ),
                      ),
                    ),
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
