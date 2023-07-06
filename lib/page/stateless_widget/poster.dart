import 'package:donasi_kebaikan/content/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Poster extends StatelessWidget {
  final String nameForURL = userName.firstName.replaceAll(' ', '%20');

  Poster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: const Text('Poster'), centerTitle: true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  margin: const EdgeInsets.only(top: 12.5),
                  width: screenSize.width * 0.90,
                  //color: Colors.red,
                  child: Image.network(
                      'https://uinsgd.ac.id/wp-content/uploads/2022/11/IMG-20221123-WA0028.jpg'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
