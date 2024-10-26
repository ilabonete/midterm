import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: 'Email')),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushReplacementNamed(context, '/home'),
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                padding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape:
                    RoundedRectangleBorder(borderRadius:
                        BorderRadius.circular(10)),
              ),
            ),
            TextButton(
              onPressed: () {}, // Implement sign-up or forgot password
              child:
                  Text("Sign Up / Forgot Password", style:
                      TextStyle(color:
                          Theme.of(context).primaryColor)),
            ),
          ],
        ),
      ),
    );
  }
}