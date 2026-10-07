import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    String teksInput = "";

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Menu Login", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              TextField(onChanged: (value) {teksInput = value;},decoration: InputDecoration(labelText: 'Username', border: OutlineInputBorder())),
              SizedBox(height: 12),
              TextField(obscureText: true, decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder())),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if(teksInput.trim().isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Username tidak boleh kosong!")));
                    } else {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage(data : teksInput),)
                      );
                    }
                  },
                  child: Text("LOGIN"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}