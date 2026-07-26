import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(builder: (_) => LoginPage()) // আবার Login Page এ ফেরত
              );
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          'Login Success! 🎉',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}