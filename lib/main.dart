// import 'package:flutter/material.dart';
// import 'img_choose_page.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

// ignore_for_file: unused_import

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: ImgChoose(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'map.dart';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //繼承StatelessWidget 代表固定住
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) {
          return const HomePage();
        },
        '/page2': (context) {
          return const Map();
        },
      },
      title: '台灣電影朝聖app',
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('台灣電影朝聖app'),
      ),
      body: Stack(
        alignment: Alignment.center, //指定未定位或部分定位widget的对齐方式
        children: <Widget>[
          const Positioned(
              top: 10.0,
              child: Text("選擇要前往的地點",
                  style: TextStyle(color: Colors.black, fontSize: 20))),
          Center(
            child: SizedBox(
              child: Image.asset('assets/taiwan.png'),
              height: 530.0,
            ),
          ),
          Positioned(
            top: 22.0,
            right: 105.0,
            child: TextButton(
              child: const Text("台北市",
                  style: TextStyle(color: Colors.red, fontSize: 11)),
              onPressed: () {
                Navigator.pushNamed(context, '/page2');
              },
            ),
          )
        ],
      ),
    );
  }
}
