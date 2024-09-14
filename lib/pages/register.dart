import 'package:flutter/material.dart';
import 'package:ui_e_commerce/pages/HomePage.dart';
import 'package:ui_e_commerce/pages/login.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F2F6), // Background color sama
      appBar: AppBar(
        backgroundColor: Color(0xFF4C53A5), // Warna yang konsisten
        title: Text('Register', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person, color: Color(0xFF4C53A5)),
              ),
            ),
            SizedBox(height: 20),
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
              child: Text('Register', style: TextStyle(fontSize: 16)),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pop(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text("Already have an account? Login"),
            )
          ],
        ),
      ),
    );
  }
}
