import 'package:flutter/material.dart';
import 'package:myapp/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _uname = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(173, 216, 230, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(250, 185, 185, 1),
          title: Text(
            "Aridnik Share",
            style: GoogleFonts.robotoSlab(
                fontSize: 40, color: const Color.fromARGB(255, 0, 0, 0)),
          ),
          centerTitle: true,
          actions: []),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 500,
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextField(
                        controller: _uname,
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(),
                        )),
                  ),
                  Container(
                      margin: EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _pass,
                        decoration: InputDecoration(
                          labelText: 'OTP',
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                      )),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      },
                      child: Text("Login")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
