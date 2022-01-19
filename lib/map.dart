// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart'; // flutter map 的 package
import 'package:latlong2/latlong.dart'; // flutter map marker時, 用來找尋marker的經緯度函式的package
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'img_choose_page.dart';
import 'edit_page.dart';

// MapBox的key名字: pk.eyJ1Ijoia29sYTQ5IiwiYSI6ImNrdzYwdHh2NjFjY3Qydm5oeWVjODRrNjkifQ.XumBv-KmjZ71w8ayd2N_-A
class Map extends StatelessWidget {
  //繼承StatelessWidget 代表固定住
  const Map({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mapbox',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("選擇朝聖地點")),
        ),
        body: FlutterMap(
          // flutter map的widget，也是我們主要要處理的東西
          options: MapOptions(
            // 指定一開始map進去，中心點以及視窗大小，我把他設定到台北，以及一開始視窗的大小
            center: LatLng(25, 121.5),
            zoom: 12.0,
          ),
          layers: [
            TileLayerOptions(
              // 設定我們的地圖要哪一個，我這邊用的是mapbox裡我設定的網址以及他給我的accessToken以及id
              urlTemplate:
                  "https://api.mapbox.com/styles/v1/kola49/ckxx15uohxjpy16ulmlxc3kgr/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoia29sYTQ5IiwiYSI6ImNrdzYwdHh2NjFjY3Qydm5oeWVjODRrNjkifQ.XumBv-KmjZ71w8ayd2N_-A",
              additionalOptions: {
                'accessToken':
                    'pk.eyJ1Ijoia29sYTQ5IiwiYSI6ImNrdzYwdHh2NjFjY3Qydm5oeWVjODRrNjkifQ.XumBv-KmjZ71w8ayd2N_-A',
                'id': 'mapbox.country-boundaries-v1'
              },
            ),
            MarkerLayerOptions(
              // 放置marker的option
              markers: [
                Marker(
                    // 當男人戀愛時 龍來冰果室 地址：台北市萬華區廣州街88號
                    width: 40.0,
                    height: 40.0,
                    point: LatLng(25.036702239944663, 121.50258074042698),
                    builder: (ctx) => // 設定marker的icon，是一個函式
                        Container(
                            child: IconButton(
                                icon:
                                    const FaIcon(FontAwesomeIcons.mapMarkerAlt),
                                iconSize: 30,
                                color: const Color(0xff6200ee),
                                onPressed: () {
                                  // 點擊會出現下面的視窗
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (builder) {
                                      return Container(
                                          color: Colors.white,
                                          child: Scaffold(
                                            appBar: AppBar(
                                              backgroundColor: Colors.blue,
                                              title: const Text(
                                                  "當男人戀愛時 龍來冰果室\n台北市萬華區廣州街88號"),
                                            ),
                                            body: Column(
                                              children: [
                                                Container(
                                                  // 視窗的介紹詞
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30,
                                                          top: 25,
                                                          right: 30,
                                                          bottom: 30),
                                                  child: const Text(
                                                    '介紹:電影《當男人戀愛時》上映好評不斷，劇情賺人熱淚，'
                                                    '邱澤飾演討債流氓「阿成」，為了追求冰山美人「浩婷」，使出各種台式把妹手法'
                                                    '，也讓「啥款」一語成為電影金句，再度掀起台客風潮，而邱澤講出「啥款」經典'
                                                    '台詞的地點，就位在萬華這間「龍來冰果室」。',
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  ),
                                                ),
                                                ElevatedButton(
                                                    child: const Text(
                                                        "前往選取相機遮罩",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500)),
                                                    onPressed: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const Scene1()));
                                                    }),
                                                ElevatedButton(
                                                    child: const Text("編輯相片",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500)),
                                                    onPressed: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const Edit()));
                                                    })
                                              ],
                                            ),
                                          ));
                                    },
                                  );
                                }))),
                Marker(
                    // 當男人戀愛時 辛發亭冰品名店 地址：台北市士林區安平街1號
                    width: 40.0,
                    height: 40.0,
                    point: LatLng(25.088716931928964, 121.52572682508588),
                    builder: (ctx) => Container(
                        child: IconButton(
                            icon: const FaIcon(FontAwesomeIcons.mapMarkerAlt),
                            iconSize: 30,
                            color: const Color(0xff6200ee),
                            onPressed: () {
                              // 點擊會出現下面的視窗
                              showModalBottomSheet(
                                context: context,
                                builder: (builder) {
                                  return Container(
                                      color: Colors.white,
                                      child: Scaffold(
                                        appBar: AppBar(
                                          backgroundColor: Colors.blue,
                                          title: const Text(
                                              "當男人戀愛時 辛發亭冰品名店\n台北市士林區安平街1號"),
                                        ),
                                        body: Column(
                                          children: [
                                            Container(
                                              // 視窗的介紹詞
                                              padding: const EdgeInsets.only(
                                                  left: 30,
                                                  top: 25,
                                                  right: 30,
                                                  bottom: 30),
                                              child: const Text(
                                                '辛發亭冰品名店 另一個《當男人戀愛時》的著名場景—阿成被浩婷潑'
                                                '果汁的拍攝地點，正是位在萬華的龍來冰果室，低調到沒有招牌，但店鋪整齊的按色系堆滿'
                                                '各式水果，形成超繽紛的背景，不只路人都忍不住多看幾眼！',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ),
                                            ElevatedButton(
                                                child: const Text("前往選取相機遮罩",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const Scene2()));
                                                }),
                                            ElevatedButton(
                                                child: const Text("編輯相片",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const Edit()));
                                                })
                                          ],
                                        ),
                                      ));
                                },
                              );
                            }))),
                Marker(
                    // 當男人戀愛時 故鄉卡拉OK 地址：台北市萬華區昆明街81號2樓
                    width: 40.0,
                    height: 40.0,
                    point: LatLng(25.043021530118548, 121.50485101159158),
                    builder: (ctx) => Container(
                        child: IconButton(
                            icon: const FaIcon(FontAwesomeIcons.mapMarkerAlt),
                            iconSize: 30,
                            color: const Color(0xff6200ee),
                            onPressed: () {
                              // 點擊會出現下面的視窗
                              showModalBottomSheet(
                                context: context,
                                builder: (builder) {
                                  return Container(
                                      color: Colors.white,
                                      child: Scaffold(
                                        appBar: AppBar(
                                          backgroundColor: Colors.blue,
                                          title: const Text(
                                              "當男人戀愛時 故鄉卡拉OK\n台北市萬華區昆明街81號2樓"),
                                        ),
                                        body: Column(
                                          children: [
                                            Container(
                                              // 視窗的介紹詞
                                              padding: const EdgeInsets.only(
                                                  left: 30,
                                                  top: 45,
                                                  right: 30,
                                                  bottom: 30),
                                              child: const Text(
                                                '電影中阿成和浩婷就是在「故鄉卡拉OK」裡定下兩個人的約會合'
                                                '約書，天天來這裡聊天、吃阿成最愛的粉蒸肉～超級復古的燈光、音樂，真的'
                                                '超有當年台客的味道！',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ),
                                            ElevatedButton(
                                                child: const Text("前往選取相機遮罩",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const Scene3()));
                                                }),
                                            ElevatedButton(
                                                child: const Text("編輯相片",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const Edit()));
                                                })
                                          ],
                                        ),
                                      ));
                                },
                              );
                            }))),
                Marker(
                    // 我的少女時代 木柵公園 地址：台北市文山區興隆路四段50號
                    width: 40.0,
                    height: 40.0,
                    point: LatLng(24.987182000200477, 121.56050265576832),
                    builder: (ctx) => Container(
                        child: IconButton(
                            icon: const FaIcon(FontAwesomeIcons.mapMarkerAlt),
                            iconSize: 30,
                            color: const Color(0xff6200ee),
                            onPressed: () {
                              // 點擊會出現下面的視窗
                              showModalBottomSheet(
                                context: context,
                                builder: (builder) {
                                  return Container(
                                      color: Colors.white,
                                      child: Scaffold(
                                        appBar: AppBar(
                                          backgroundColor: Colors.blue,
                                          title: const Text(
                                              "我的少女時代 木柵公園\n台北市文山區興隆路四段50號"),
                                        ),
                                        body: Column(
                                          children: [
                                            Container(
                                              // 視窗的介紹詞
                                              padding: const EdgeInsets.only(
                                                  left: 30,
                                                  top: 25,
                                                  right: 30,
                                                  bottom: 30),
                                              child: const Text(
                                                '木柵公園位於台北市南部的文山區，大部分範圍處於山坡地'
                                                '上，環境清幽，是繁喧都市中的一片閑靜之地。在電影中，若要選最浪漫的段落'
                                                '，徐太宇（王大陸）牽著林真心（宋芸樺）的手在木柵公園的溜冰場上溜冰一場'
                                                '必定是其中之一，還有片末真心獨坐在溜冰場旁傾聽太宇錄在卡式帶內的留言也'
                                                '是多麼的窩心。',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ),
                                            ElevatedButton(
                                                child: const Text("前往選取相機遮罩",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const Scene4()));
                                                }),
                                            Expanded(
                                                child: ElevatedButton(
                                                    child: const Text("編輯相片",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500)),
                                                    onPressed: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const Edit()));
                                                    }))
                                          ],
                                        ),
                                      ));
                                },
                              );
                            }))),
                Marker(
                    // 我的少女時代 U2萬年大樓 地址：台北市萬華區西寧南路70號8樓
                    width: 40.0,
                    height: 40.0,
                    point: LatLng(25.043680889276693, 121.50590934042712),
                    builder: (ctx) => Container(
                        child: IconButton(
                            icon: const FaIcon(FontAwesomeIcons.mapMarkerAlt),
                            iconSize: 30,
                            color: const Color(0xff6200ee),
                            onPressed: () {
                              // 點擊會出現下面的視窗
                              showModalBottomSheet(
                                context: context,
                                builder: (builder) {
                                  return Container(
                                      color: Colors.white,
                                      child: Scaffold(
                                        appBar: AppBar(
                                          backgroundColor: Colors.blue,
                                          title: const Text(
                                              "我的少女時代 U2萬年大樓\n台北市萬華區西寧南路70號8樓"),
                                        ),
                                        body: Column(
                                          children: [
                                            Container(
                                              // 視窗的介紹詞
                                              padding: const EdgeInsets.only(
                                                  left: 30,
                                                  top: 40,
                                                  right: 30,
                                                  bottom: 30),
                                              child: const Text(
                                                '徐太宇（王大陸）與林真心（宋芸樺）「友誼」的開始見證於'
                                                '西門町萬年大樓的U2電影館。在片中正播放周星馳電影的包廂內，太宇質問真心那'
                                                '封衝他而來又令人啼笑皆非的咀咒信。',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ),
                                            ElevatedButton(
                                                child: const Text("前往選取相機遮罩",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const Scene5()));
                                                }),
                                            ElevatedButton(
                                                child: const Text("編輯相片",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const Edit()));
                                                })
                                          ],
                                        ),
                                      ));
                                },
                              );
                            }))),
                Marker(
                    // 我的少女時代 榮星公園 地址：台北市中山區行仁里民權東路三段1號
                    width: 40.0,
                    height: 40.0,
                    point: LatLng(25.06290754353055, 121.54008316741468),
                    builder: (ctx) => Container(
                        child: IconButton(
                            icon: const FaIcon(FontAwesomeIcons.mapMarkerAlt),
                            iconSize: 30,
                            color: const Color(0xff6200ee),
                            onPressed: () {
                              // 點擊會出現下面的視窗
                              showModalBottomSheet(
                                context: context,
                                builder: (builder) {
                                  return Container(
                                      color: Colors.white,
                                      child: Scaffold(
                                        appBar: AppBar(
                                          backgroundColor: Colors.blue,
                                          title: const Text(
                                              "我的少女時代 榮星公園\n台北市中山區行仁里民權東路三段1號"),
                                        ),
                                        body: Column(
                                          children: [
                                            Container(
                                              // 視窗的介紹詞
                                              padding: const EdgeInsets.only(
                                                  left: 30,
                                                  top: 25,
                                                  right: 30,
                                                  bottom: 30),
                                              child: const Text(
                                                '這個位於中山區由辜振甫家族於1968年興建的花園，在片中帶給觀眾'
                                                '不少驚喜。不錯，劉華出沒注意！公園其實也是電影《一頁台北》的取景地，片中小凱（'
                                                '姚淳耀）與Susie（郭采潔）因躲避警探基永（張孝全）而混入正在園中跳土風舞的大'
                                                '媽輩中。',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ),
                                            ElevatedButton(
                                                child: const Text("前往選取相機遮罩",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const Scene6()));
                                                }),
                                            ElevatedButton(
                                                child: const Text("編輯相片",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const Edit()));
                                                })
                                          ],
                                        ),
                                      ));
                                },
                              );
                            }))),
                Marker(
                    // 艋舺 艋舺清水巖 地址：臺北市萬華區康定路81號
                    width: 40.0,
                    height: 40.0,
                    point: LatLng(25.040520315033447, 121.50224089624996),
                    builder: (ctx) => Container(
                        child: IconButton(
                            icon: const FaIcon(FontAwesomeIcons.mapMarkerAlt),
                            iconSize: 30,
                            color: const Color(0xff6200ee),
                            onPressed: () {
                              // 點擊會出現下面的視窗
                              showModalBottomSheet(
                                context: context,
                                builder: (builder) {
                                  return Container(
                                      color: Colors.white,
                                      child: Scaffold(
                                        appBar: AppBar(
                                          backgroundColor: Colors.blue,
                                          title: const Text(
                                              "艋舺 艋舺清水巖\n臺北市萬華區康定路81號"),
                                        ),
                                        body: Column(
                                          children: [
                                            Container(
                                              // 視窗的介紹詞
                                              padding: const EdgeInsets.only(
                                                  left: 30,
                                                  top: 25,
                                                  right: 30,
                                                  bottom: 30),
                                              child: const Text(
                                                '艋舺清水巖，俗稱艋舺祖師廟，是台灣三級古蹟。艋舺清水巖，主祀清水祖師，'
                                                '位在台北市萬華區，與艋舺龍山寺、大龍峒保安宮合稱為臺北三大廟門，也與三峽祖師廟、淡水祖'
                                                '師廟合稱台北地區三大祖師廟。而電影艋舺也有很多場景是在此拍攝，連電影海報的背景都能見到'
                                                '清水巖祖師廟呢！',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ),
                                            ElevatedButton(
                                                child: const Text("前往選取相機遮罩",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const Scene7()));
                                                }),
                                            Expanded(
                                                child: ElevatedButton(
                                                    child: const Text("編輯相片",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500)),
                                                    onPressed: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const Edit()));
                                                    }))
                                          ],
                                        ),
                                      ));
                                },
                              );
                            }))),
                Marker(
                    // 等一個人咖啡 等一個人咖啡本店 臺北市文山區一壽街44巷1號
                    width: 40.0,
                    height: 40.0,
                    point: LatLng(24.979541164782596, 121.55663529809728),
                    builder: (ctx) => Container(
                        child: IconButton(
                            icon: const FaIcon(FontAwesomeIcons.mapMarkerAlt),
                            iconSize: 30,
                            color: const Color(0xff6200ee),
                            onPressed: () {
                              // 點擊會出現下面的視窗
                              showModalBottomSheet(
                                context: context,
                                builder: (builder) {
                                  return Container(
                                      color: Colors.white,
                                      child: Scaffold(
                                        appBar: AppBar(
                                          backgroundColor: Colors.blue,
                                          title: const Center(
                                              child: Text(
                                                  "等一個人咖啡 等一個人咖啡本店\n臺北市文山區一壽街44巷1號")),
                                        ),
                                        body: Column(
                                          children: [
                                            Container(
                                              // 視窗的介紹詞
                                              padding: const EdgeInsets.only(
                                                  left: 30,
                                                  top: 50,
                                                  right: 30,
                                                  bottom: 90),
                                              child: const Text(
                                                '等一個人咖啡，就位在北市文山區景美女中正對面的一壽街上， 周邊環'
                                                '境相當靜謐，面對著社區小公園，是一個愜意感十足的個性咖啡店。',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ),
                                            ElevatedButton(
                                                child: const Text("前往選取相機遮罩",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const Scene8()));
                                                }),
                                            ElevatedButton(
                                                child: const Text("編輯相片",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const Edit()));
                                                })
                                          ],
                                        ),
                                      ));
                                },
                              );
                            }))),
              ],
            ),
          ],
        ));
  }
}
