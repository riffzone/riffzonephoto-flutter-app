import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
//import 'dart:developer' as developer;
import 'package:cached_network_image/cached_network_image.dart';

class PFPicture {
  final String id;
  final String url;
  final String txt;

  PFPicture({required this.id, required this.url, required this.txt});

  factory PFPicture.fromJson(Map<String, dynamic> json) {
    return PFPicture(
      id: json['id'],
      url: json['url'],
      txt: json['txt'],
    );
  }
}

class PFPicturesPage extends StatelessWidget {
  final String code;

  const PFPicturesPage({super.key, required this.code});

  Future<List<PFPicture>> fetchPFPictures() async {
    final response = await http.get(
        Uri.parse('https://api.riffzone.net/photo/app/?what=pictures&code=$code'));
    if (response.statusCode == 200) {
      final List<PFPicture> myJSONList = (jsonDecode(response.body) as List)
          .map((item) => PFPicture.fromJson(item))
          .toList();
      return myJSONList;
    } else {
      return List<PFPicture>.empty();
    }
  }

  @override
  Widget build(BuildContext context) {
//  developer.log("PFPicturesPage : code = ${code}");
    return FutureBuilder<List<PFPicture>>(
      future: fetchPFPictures(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error loading data :: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No pictures available'));
        } else {
          final myPFPictures = snapshot.data!;
          return Container(
              color: Colors.blueGrey.shade100,
              child: ListView.builder(
                itemCount: myPFPictures.length,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      color: Colors.blueGrey.shade900,
                      child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CachedNetworkImage(
                        imageUrl: myPFPictures[index].url,
                        fit: BoxFit.contain,
                        width: double.infinity,
                        height: MediaQuery.of(context).size.width,
                        placeholder: (context, url) => const Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      )));
                },
              ));
        }
      },
    );
  }
}
