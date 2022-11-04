import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      child: Image.asset('assets/images/logo.png')),
                  Container(height: 20),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, top: 20, bottom: 12),
                      child: Column(children: [
                        TextField(
                          onChanged: (text) {
                            email = text;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: 'Email', border: OutlineInputBorder()),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          onChanged: (text) {
                            password = text;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                            onPressed: () {
                              if (email == 'isaac@flutter.com.br' &&
                                  password == '123') {
                                Navigator.of(context)
                                    .pushReplacementNamed('/home');
                              }
                            },
                            child: Container(
                                width: double.infinity,
                                child: Text(
                                  'Entrar',
                                  textAlign: TextAlign.center,
                                )))
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/bg.jpg', fit: BoxFit.cover)),
        Container(color: Colors.black.withOpacity(0.05)),
        _body(),
      ],
    ));
  }
}
