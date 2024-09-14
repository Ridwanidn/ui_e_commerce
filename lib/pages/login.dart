import 'package:flutter/material.dart';
import 'package:ui_e_commerce/pages/HomePage.dart';
import 'package:ui_e_commerce/pages/register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F2F6), // Background color sama seperti di gambar
      appBar: AppBar(
        backgroundColor: Color(0xFF4C53A5), // Warna yang konsisten
        title: Text('Login', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email, color: Color(0xFF4C53A5)),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock, color: Color(0xFF4C53A5)),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF4C53A5),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: Text('Login', style: TextStyle(fontSize: 16),),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
              },
              child: Text("Don't have an account? Register"),
            )
          ],
        ),
      ),
    );
  }
}
