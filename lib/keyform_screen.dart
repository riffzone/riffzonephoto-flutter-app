import 'package:flutter/material.dart';
//import 'dart:developer' as developer;

import 'keypics_screen.dart';

class KeyFormScreen extends StatefulWidget {
  @override
  _KeyFormScreenState createState() => _KeyFormScreenState();
}

class _KeyFormScreenState extends State<KeyFormScreen> {
  final _codeController = TextEditingController();

  void _navigateAndDisplayPassword(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => KeypicsScreen(code: _codeController.text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Code',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
                child: SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    controller: _codeController,
                    onFieldSubmitted: (value) { _navigateAndDisplayPassword(context); },
                    autofocus: true,
                    obscureText: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      labelText: 'Code',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => _navigateAndDisplayPassword(context),
                    child: Text('OK'),
                  ),
                ],
              ),
            ))));
  }
}
