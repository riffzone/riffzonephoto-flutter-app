import 'package:flutter/material.dart';
import 'package:riffzonephoto/pfpictures_page.dart';

class KeypicsScreen extends StatelessWidget {
  const KeypicsScreen({super.key, required this.code});

  final String code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Private',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        body: PFPicturesPage(code: code)
    );
  }
}
