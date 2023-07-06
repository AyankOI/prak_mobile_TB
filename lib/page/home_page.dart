import 'package:donasi_kebaikan/content/user.dart';
import 'package:donasi_kebaikan/page/stateless_widget/poster.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const WelcomeText(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.5),
                        child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.grey[200],
                          child: IconButton(
                              icon: const Icon(Icons.image, color: Colors.blue),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) {
                                    return Poster();
                                  }),
                                );
                              }),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('''Poster''',
                          style: TextStyle(fontSize: 10.0),
                          textAlign: TextAlign.center)
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 20, right: 20, left: 20, bottom: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.5),
                  child: Image.network(
                      'https://scontent.fbdo9-1.fna.fbcdn.net/v/t39.30808-6/357043954_208713495464232_3053472142165338385_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=730e14&_nc_ohc=gVchG77S31MAX8nlEhl&_nc_ht=scontent.fbdo9-1.fna&oh=00_AfAhjZ09UmESOm_XNoyBMBFdKe_8aGPlfdGI0Qmch0QZsg&oe=64A1E73D'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 5, right: 20, left: 20, bottom: 5),
                child: const Text('Kebaikan ada pada dirimu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 10, right: 20, left: 20, bottom: 10),
                child: const Text(
                    '''Dengan kemajuan teknologi, tindakan bersedekah menjadi lebih mudah dan dapat diakses di era online. Untuk individu yang menjalani kehidupan sibuk atau kekurangan waktu untuk secara fisik pergi ke organisasi amal, sekarang ada metode yang lebih instan untuk berkontribusi secara online. Pendekatan amal yang nyaman ini hanya membutuhkan penggunaan smartphone dan koneksi internet. Akibatnya, adalah mungkin untuk memberi sedekah tanpa harus meninggalkan kenyamanan rumah seseorang. Pendekatan modern ini terbukti lebih praktis dan menghemat waktu bagi mereka yang terlibat dalam bentuk filantropi ini.

Jika Anda tertarik untuk menyumbangkan sebagian dari barang-barang Anda, Donasi Kebaikan menawarkan platform untuk kemurahan hati tersebut. Melalui aplikasi ini, Anda berkesempatan untuk berkontribusi kepada individu yang terkena dampak bencana alam, serta mereka yang menghadapi berbagai bentuk kesulitan. Selain itu, aplikasi ini memberikan dukungannya kepada anak-anak yatim piatu dan terlantar, memberikan bantuan yang sangat mereka butuhkan.
                    ''',
                    textAlign: TextAlign.justify),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 100,
                    height: 25,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.purple),
                      onPressed: () async {
                        String url =
                            'https://www.instagram.com/ayangiyo/?hl=id';
                        if (!await launchUrlString(
                          url,
                          mode: LaunchMode.externalApplication,
                        )) throw 'Could not launch';
                      },
                      child: const Text('Instagram'),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 25,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      onPressed: () async {
                        String url =
                            'https://www.youtube.com/channel/UCeTlFlFCQq0AMnj0N8p9WJg';
                        if (!await launchUrlString(
                          url,
                          mode: LaunchMode.externalApplication,
                        )) throw 'Could not launch';
                      },
                      child: const Text('YouTube'),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 25,
                    child: ElevatedButton(
                      onPressed: () async {
                        String url =
                            'https://www.facebook.com/profile.php?id=100089767486545';
                        if (!await launchUrlString(url)) {
                          throw 'Could not launch';
                        }
                      },
                      child: const Text('Facebook'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (userName.firstName == '' || userName.firstName == 'User') {
      return Container(
        margin: const EdgeInsets.all(22.5),
        child: const Text(
          'Silakan ubah nama melalui "Akun"',
          textAlign: TextAlign.center,
          style: TextStyle(decoration: TextDecoration.underline),
        ),
      );
    } else {
      return Container(
        margin: const EdgeInsets.all(22.5),
        child: Text(
          'Assalamualaikum, selamat datang ${userName.firstName}',
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
      );
    }
  }
}
