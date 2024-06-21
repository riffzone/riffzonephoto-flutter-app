import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:riffzonephoto/welcome_page.dart';
import 'package:riffzonephoto/pfpictures_page.dart';
import 'package:riffzonephoto/keyform_screen.dart';
import 'package:riffzonephoto/info_page.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });

//  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'RiffZone Photo', home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedPageNum = 0;

  setSelectedPageNum(int thePageNum) {
    setState(() {
      _selectedPageNum = thePageNum;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RiffZone Photo', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.key, color: Colors.white),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => KeyFormScreen()));
            },
          ),
        ],
      ),
      body: [const WelcomePage(), const PFPicturesPage(code: ""), const InfoPage()][_selectedPageNum],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageNum,
        onTap: (index) => setSelectedPageNum(index),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        iconSize: 32,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(icon: Icon(Icons.photo_album), label: 'Portfolio'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Info')
        ],
      ),
    );
  }
}
