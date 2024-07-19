import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'auth_selection_screen.dart';

void main() {
  runApp(PolovoyaApp());
}

class PolovoyaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Polovoya',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ).copyWith(
          secondary: Color(0xFFFFA500),
        ),
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFFFFF),
            fontFamily: 'Roboto',
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
        ),
      ),
      home: SplashScreen(),
      routes: {
        '/auth': (context) => AuthSelectionScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/traveeeel.jpg',
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Polovoya',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/auth');
                },
                child: Text('KEŞFET. KONUŞ. BAĞLAN!'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Ekran'),
      ),
      body: Center(
        child: Text('Ana Ekrana Hoş Geldiniz!'),
      ),
    );
  }
}


