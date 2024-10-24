import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _errorMessage = '';

  void _login() {
    if (_usernameController.text == 'admin' && _passwordController.text == 'admin123') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage(username: _usernameController.text)),
      );
    } else {
      setState(() {
        _errorMessage = 'Username atau password salah!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Background abu-abu
      appBar: AppBar(
        title: Text('Login'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
      ),
      body: Center(
        child: Container(
          width: 300, // Lebar form login dibatasi
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white, // Warna latar belakang kotak form
            borderRadius: BorderRadius.circular(12), // Sudut form kotak
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 5), // Efek bayangan
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ukuran mengikuti isi
            children: [
              // Logo di atas
              Image.asset(
                'assets/logo.png', // Path logo yang diinginkan
                width: 80,
                height: 80,
              ),
              SizedBox(height: 20), // Jarak antara logo dan judul
              
              // Judul Login
              Text(
                'Login Page',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10), // Jarak antara judul dan subtitle

              // Subtitle/Keterangan
              Text(
                'Silakan masuk untuk melanjutkan',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 20), // Jarak antara keterangan dan input field

              // Input Username
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person), // Ikon user
                ),
              ),
              SizedBox(height: 20), // Jarak antara input username dan password

              // Input Password
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock), // Ikon kunci
                ),
                obscureText: true, // Teks password tersamar
              ),
              SizedBox(height: 20), // Jarak antara password dan tombol login

              // Tombol Login
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), // Lebar tombol disesuaikan
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Membulatkan sudut tombol
                  ),
                ),
                child: Text('Login', style: TextStyle(fontSize: 18)),
              ),

              // Pesan Error jika login salah
              if (_errorMessage.isNotEmpty) ...[
                SizedBox(height: 20),
                Text(
                  _errorMessage,
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}