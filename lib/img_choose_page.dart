// ignore_for_file: unused_import, prefer_const_constructors

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'camera_page.dart';
import 'dart:io';

// 當男人戀愛時 龍來冰果室 地址：台北市萬華區廣州街88號
class Scene1 extends StatefulWidget {
  const Scene1({Key? key}) : super(key: key);

  @override
  State<Scene1> createState() => Scene1Choose();
}

class Scene1Choose extends State<Scene1> {
  String path1 = 'assets/pose1-1.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('選取劇照')),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                height: 200,
                width: 300,
                child: Image.asset('assets/scene1-1.jpg')),
            ElevatedButton(
              onPressed: () async {
                await availableCameras().then(
                  (value) => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CameraPage(
                        cameras: value,
                        imagepath: path1,
                      ),
                    ),
                  ),
                );
              },
              child: const Text('確認'),
            ),
          ],
        ),
      ),
    );
  }
}

// 當男人戀愛時 辛發亭冰品名店 地址：台北市士林區安平街1號
class Scene2 extends StatefulWidget {
  const Scene2({Key? key}) : super(key: key);

  @override
  State<Scene2> createState() => Scene2Choose();
}

class Scene2Choose extends State<Scene2> {
  String path1 = 'assets/pose2-1.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('選取劇照')),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                height: 200,
                width: 300,
                child: Image.asset('assets/scene2-1.png')),
            ElevatedButton(
              onPressed: () async {
                await availableCameras().then(
                  (value) => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CameraPage(
                        cameras: value,
                        imagepath: path1,
                      ),
                    ),
                  ),
                );
              },
              child: const Text('確認'),
            ),
          ],
        ),
      ),
    );
  }
}

// 當男人戀愛時 故鄉卡拉OK 地址：台北市萬華區昆明街81號2樓
class Scene3 extends StatefulWidget {
  const Scene3({Key? key}) : super(key: key);

  @override
  State<Scene3> createState() => Scene3Choose();
}

class Scene3Choose extends State<Scene3> {
  String path1 = 'assets/pose3-1.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('選取劇照')),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                height: 200,
                width: 300,
                child: Image.asset('assets/scene3-1.jpg')),
            ElevatedButton(
              onPressed: () async {
                await availableCameras().then(
                  (value) => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CameraPage(
                        cameras: value,
                        imagepath: path1,
                      ),
                    ),
                  ),
                );
              },
              child: const Text('確認'),
            ),
          ],
        ),
      ),
    );
  }
}

// 我的少女時代 木柵公園 地址：台北市文山區興隆路四段50號
class Scene4 extends StatefulWidget {
  const Scene4({Key? key}) : super(key: key);

  @override
  State<Scene4> createState() => Scene4Choose();
}

class Scene4Choose extends State<Scene4> {
  String path1 = 'assets/pose4-1.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('選取劇照')),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                height: 200,
                width: 300,
                child: Image.asset('assets/scene4-1.jpg')),
            ElevatedButton(
              onPressed: () async {
                await availableCameras().then(
                  (value) => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CameraPage(
                        cameras: value,
                        imagepath: path1,
                      ),
                    ),
                  ),
                );
              },
              child: const Text('確認'),
            ),
          ],
        ),
      ),
    );
  }
}

// 我的少女時代 U2萬年大樓 地址：台北市萬華區西寧南路70號8樓
class Scene5 extends StatefulWidget {
  const Scene5({Key? key}) : super(key: key);

  @override
  State<Scene5> createState() => Scene5Choose();
}

class Scene5Choose extends State<Scene5> {
  String path1 = 'assets/pose5-1.png';
  String path2 = 'assets/pose5-2.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('選取劇照')),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                height: 200,
                width: 300,
                child: Image.asset('assets/scene5-1.jpg')),
            ElevatedButton(
              onPressed: () async {
                await availableCameras().then(
                  (value) => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CameraPage(
                        cameras: value,
                        imagepath: path1,
                      ),
                    ),
                  ),
                );
              },
              child: const Text('確認'),
            ),
            SizedBox(
              height: 50,
              width: 50,
            ),
            SizedBox(
                height: 200,
                width: 300,
                child: Image.asset('assets/scene5-2.jpg')),
            ElevatedButton(
              onPressed: () async {
                await availableCameras().then(
                  (value) => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CameraPage(
                        cameras: value,
                        imagepath: path2,
                      ),
                    ),
                  ),
                );
              },
              child: const Text('確認'),
            ),
          ],
        ),
      ),
    );
  }
}

class Scene6 extends StatefulWidget {
  const Scene6({Key? key}) : super(key: key);

  @override
  State<Scene6> createState() => Scene6Choose();
}

class Scene6Choose extends State<Scene6> {
  String path1 = 'assets/pose6-1.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('選取劇照')),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                height: 200,
                width: 300,
                child: Image.asset('assets/scene6-1.jpg')),
            ElevatedButton(
              onPressed: () async {
                await availableCameras().then(
                  (value) => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CameraPage(
                        cameras: value,
                        imagepath: path1,
                      ),
                    ),
                  ),
                );
              },
              child: const Text('確認'),
            ),
          ],
        ),
      ),
    );
  }
}

class Scene7 extends StatefulWidget {
  const Scene7({Key? key}) : super(key: key);

  @override
  State<Scene7> createState() => Scene7Choose();
}

class Scene7Choose extends State<Scene7> {
  String path1 = 'assets/pose7-1.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('選取劇照')),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                height: 200,
                width: 300,
                child: Image.asset('assets/scene7-1.jpg')),
            ElevatedButton(
              onPressed: () async {
                await availableCameras().then(
                  (value) => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CameraPage(
                        cameras: value,
                        imagepath: path1,
                      ),
                    ),
                  ),
                );
              },
              child: const Text('確認'),
            ),
          ],
        ),
      ),
    );
  }
}

class Scene8 extends StatefulWidget {
  const Scene8({Key? key}) : super(key: key);

  @override
  State<Scene8> createState() => Scene8Choose();
}

class Scene8Choose extends State<Scene8> {
  String path1 = 'assets/pose8-1.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('選取劇照')),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                height: 200,
                width: 300,
                child: Image.asset('assets/scene8-1.jpg')),
            ElevatedButton(
              onPressed: () async {
                await availableCameras().then(
                  (value) => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CameraPage(
                        cameras: value,
                        imagepath: path1,
                      ),
                    ),
                  ),
                );
              },
              child: const Text('確認'),
            ),
          ],
        ),
      ),
    );
  }
}
