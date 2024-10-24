import 'package:flutter/material.dart';
import 'login_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Warna latar belakang
      body: Center(
        child: Container(
          width: 300, // Lebar kotak
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white, // Warna latar belakang kotak
            borderRadius: BorderRadius.circular(12), // Sudut membulat
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

              // Teks Selamat Datang
              Text(
                'Selamat Datang!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10), // Jarak antara judul dan keterangan

              // Keterangan
              Text(
                'Silakan login untuk melanjutkan',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center, // Rata tengah
              ),
              SizedBox(height: 30), // Jarak sebelum tombol login

              // Tombol Login
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), // Lebar tombol disesuaikan
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Membulatkan sudut tombol
                  ),
                ),
                child: Text('Login', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}