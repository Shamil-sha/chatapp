import 'package:chatapp/forgot.dart';
import 'package:chatapp/reg.dart';
import 'package:flutter/material.dart';

class Logins extends StatelessWidget {
  Logins({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 254, 254),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("asset/login bg.png"),
            TextField(
              decoration: InputDecoration(
                hintText: "Email",
                filled: true,
                fillColor: const Color.fromARGB(31, 233, 206, 206),
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 30, width: 30),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: "Password",
                filled: true,
                fillColor: const Color.fromARGB(31, 233, 206, 206),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Forgot()),
                  );
                },
                child: Text(
                  "forgot password?",
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 37, 147, 232),
              ),
              child: Text(
                "login",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),

            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Registers()),
                        );
                      },
                      child: Text(
                        "Register Now",
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 135, 191, 237),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
