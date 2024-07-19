import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profilim'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Profil Resmi
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile.jpg'), // Profil resmini ekleyin
              ),
            ),
            SizedBox(height: 16.0),
            // İsim
            Center(
              child: Text(
                'John Doe',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8.0),
            // Dil Becerileri
            Text(
              'Dil Becerileri',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('İngilizce, İspanyolca, Fransızca'),
            SizedBox(height: 8.0),
            // Deneyimler
            Text(
              'Deneyimler',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('5 yıl dil öğretmenliği, 3 yıl rehberlik'),
            SizedBox(height: 8.0),
            // Hizmet Detayları
            Text(
              'Hizmet Detayları',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('Şehir turları, dil dersleri, kültürel etkinlikler'),
            SizedBox(height: 8.0),
            // İletişim Butonu
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Mesaj gönderme ekranına yönlendirme
                },
                child: Text('İletişime Geç'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
