import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kayıt Ol'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: <Widget>[
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/traveeeel.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Form
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Ad',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Soyad',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'E-posta',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Şifre',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 24.0),
                    ElevatedButton(
                      onPressed: () {
                        // Kayıt olduktan sonra profil sayfasına yönlendirme
                        Navigator.pushNamed(context, '/profile');
                      },
                      child: Text('Kayıt Ol'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

