import 'package:flutter/material.dart';
import 'package:my_music_app/home.dart';
import 'package:my_music_app/presentation/auth/common/common_appbar.dart';
import 'package:my_music_app/presentation/auth/signin_page.dart';

class Registerpage extends StatelessWidget {
  const Registerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Register',
                style: TextStyle(
                  fontFamily: 'satoshi',
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
            SizedBox(height: 50),
            TextField(decoration: InputDecoration(hintText: 'Full Name')),
            SizedBox(height: 30),
            TextField(decoration: InputDecoration(hintText: 'Enter Email')),
            SizedBox(height: 30),
            TextField(decoration: InputDecoration(hintText: 'Password')),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size(350, 100)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Text(
                'Create Account',
                style: TextStyle(fontFamily: 'satoshi', color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 91, vertical: 30),
        child: Row(
          children: [
            Text('Do you hava an account?'),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SigninPage()),
                );
              },
              child: Text('Sign in'),
            ),
          ],
        ),
      ),
    );
  }
}
