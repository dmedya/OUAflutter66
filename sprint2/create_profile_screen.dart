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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Geri tuşuna basıldığında yapılacak işlemler
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile_picture.jpg'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Ad Soyad',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Dil Becerileri: İngilizce, İspanyolca',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Deneyimler: 5 yıl rehberlik deneyimi',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Hizmet Detayları: Şehir turları, kültürel aktiviteler',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Mesaj gönderme işlemi
                },
                child: Text('Mesaj Gönder'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Gezgin arama işlemi
                },
                child: Text('Gezgin Ara'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
