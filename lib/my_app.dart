import 'package:flutter/material.dart';
import 'Bay_cal.dart';
import 'Gam_cal.dart';
import 'Div_cal.dart';
import 'Chp_cal.dart';
import 'Qtc_cal.dart';
import 'bmi_cal.dart';
import 'ccr_cal.dart';
import 'ch2_cal.dart';
import 'mel_cal.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'myfunctions.dart';
import 'package:get/get.dart';
import 'ldl_cal.dart';
import 'fen_cal.dart';
import 'chv_cal.dart';
import 'has_cal.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'adsList.dart';

const MaterialColor cursorColor1 = Colors.grey;
Box? box1 = Hive.box("favorites4");

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const locale = Locale("ja", "JP");
    // ignore: prefer_const_constructors
    return GetMaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        locale,
      ],
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(onPrimary: Colors.white)),
        fontFamily: 'NotoSansJP',
        primarySwatch: Colors.lightBlue,
        appBarTheme:
            const AppBarTheme(color: Color.fromARGB(255, 245, 245, 245)),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => MyHomePage()),
        GetPage(name: '/Bmi_cal', page: () => Bmi_cal()),
        GetPage(name: '/Ccr_cal', page: () => Ccr_cal()),
        GetPage(name: '/Ch2_cal', page: () => Ch2_cal()),
        GetPage(name: '/Chv_cal', page: () => Chv_cal()),
        GetPage(name: '/Ldl_cal', page: () => Ldl_cal()),
        GetPage(name: '/Fen_cal', page: () => Fen_cal()),
        GetPage(name: '/Has_cal', page: () => Has_cal()),
        GetPage(name: '/Mel_cal', page: () => Mel_cal()),
        GetPage(name: '/Qtc_cal', page: () => Qtc_cal()),
        GetPage(name: '/Chp_cal', page: () => Chp_cal()),
        GetPage(name: '/Gam_cal', page: () => Gam_cal()),
        GetPage(name: '/Div_cal', page: () => Div_cal()),
        GetPage(name: '/Bay_cal', page: () => Bay_cal()),
      ],
    );
  }
}

/// Example page
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

List<String> n1 = [
  for (int i = 0; i < Cc1s.Cc1_items.length; i++)
    Cc1s.Cc1_items[i].jp_category_name
];
Set<String> n2 = n1.toSet();
List n3 = [
  for (int i = 0; i < n2.length; i++)
    [
      for (int j = 0; j < Cc1s.Cc1_items.length; j++)
        if (Cc1s.Cc1_items[j].jp_category_name == n2.elementAt(i)) j
    ]
];

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  //MyHomePage({Key? key}) : super(key: key);
  late final TabController _tabController;

  int currentIndex = 0;

  final screens = [
    AllPage(),
    CategoryPage(),
    FavoritePage(),
  ];
  ////categoryPage

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue,
      /* appBar: AppBar(
        title: Text('医療計算ツール'),
      ), */
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text('医療計算ツール'),
            centerTitle: false,
          ),
        ],
        body: screens[currentIndex],
        /* IndexedStack(
        index: currentIndex,
        children: screens,
      ), */
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(
                () => currentIndex = index,
              ),
          iconSize: 20,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'ホーム',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.feed_rounded),
              label: 'カテゴリー',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'お気に入り',
            ),
          ]),
    );
  }
}

/////////////////////////
/////////////////////////
BannerAd myBanner = Banner1;
//BannerAd myBanner2 = Rectangle1;
BannerAdListener listener = listener1;

//////////////////////////////
////////AllPage
class AllPage extends StatefulWidget {
  AllPage({Key? key}) : super(key: key);

  @override
  _AllPageState createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  static List<String> a1 = [
    for (int i = 0; i < Cc1s.Cc1_items.length; i++) Cc1s.Cc1_items[i].route_id
  ];
  static Set<String> a2 = a1.toSet();

  List n3 = [
    for (int i = 0; i < a2.length; i++)
      [
        for (int j = 0; j < Cc1s.Cc1_items.length; j++)
          if (Cc1s.Cc1_items[j].route_id == a2.elementAt(i)) j
      ]
  ];

  //late BannerAd banner;
  //final BannerAd myBanner = Banner1;
  //final BannerAdListener listener = listener1;

  @override
  void initState() {
    myBanner.dispose();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    myBanner.load();
    final AdWidget adWidget = AdWidget(ad: myBanner);
    final Container adContainer2 = adContainer1(adWidget, myBanner);

    //super.dispose();
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: Cc1s.Cc1_items.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    /* index % 5 == 0
                        ? Container(
                            color: Colors.white,
                            height: 64.0,
                            width: double.infinity,
                            child: AdWidget(ad: myBanner),
                          )
                        :  */
                    const SizedBox(),
                    Card(
                      child: ListTile(
                          title: Text(Cc1s.Cc1_items[index].mainDes),
                          subtitle: Text(Cc1s.Cc1_items[index].subDes),
                          trailing: Wrap(
                            spacing: 12, // space between two icons
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.favorite,
                                    color: box1!.get(
                                            Cc1s.Cc1_items[index].route_id,
                                            defaultValue: false)
                                        ? Colors.red
                                        : Colors.grey),
                                onPressed: () {
                                  setState(() {
                                    box1!.put(
                                        Cc1s.Cc1_items[index].route_id,
                                        !box1!.get(
                                            Cc1s.Cc1_items[index].route_id,
                                            defaultValue: false));
                                  });
                                },
                              ), // icon-1
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                                child: Icon(Icons.navigate_next),
                              ) // icon-2
                            ],
                          ),
                          onTap: () {
                            // () async => await InterstitialAd1.instance.show();
                            Get.toNamed(
                              Cc1s.Cc1_items[index]
                                  .route_id, /*arguments: arg1[index]*/
                            );
                          }),
                    ),
                  ],
                );
              }),
        ),
        /* ElevatedButton(
          child: const Text('Show Ad'),
          onPressed: () async => await InterstitialAd1.instance.show(),
        ), */
        adContainer2
      ],
    );
  }
}

//////////////////////////////
////////Favorite
class FavoritePage extends StatefulWidget {
  FavoritePage({Key? key, required}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<Cc1> zz1 = [
    for (int i = 0; i < Cc1s.Cc1_items.length; i++)
      if (box1!.get(Cc1s.Cc1_items[i].route_id, defaultValue: false))
        Cc1s.Cc1_items[i]
  ];

  @override
  void initState() {
    myBanner.dispose();
    //myBanner.load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    myBanner.load();
    final AdWidget adWidget = AdWidget(ad: myBanner);
    final Container adContainer2 = adContainer1(adWidget, myBanner);
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: zz1.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                      title: Text(zz1[index].mainDes),
                      subtitle: Text(zz1[index].subDes),
                      trailing: Wrap(
                        spacing: 12, // space between two icons
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.favorite,
                                //color: box1!.isEmpty ? Colors.black : Colors.red),
                                //color: z1[index] ? Colors.red : Colors.grey),
                                color: box1!.get(zz1[index].route_id,
                                        defaultValue: false)
                                    ? Colors.red
                                    : Colors.grey),
                            onPressed: () {
                              setState(() {
                                //z1[index] = !z1[index];
                                box1!.put(
                                    zz1[index].route_id,
                                    !box1!.get(zz1[index].route_id,
                                        defaultValue: false));
                              });

                              //box1!.put(Cc1s.Cc1_items[index].route_id, z1[index]);
                            },
                          ), // icon-1
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                            child: Icon(Icons.navigate_next),
                          ) // icon-2
                        ],
                      ),
                      onTap: () {
                        Get.toNamed(
                          zz1[index].route_id, /*arguments: arg1[index]*/
                        );
                        /* Navigator.of(context)
                              .pushNamed(arg1[index].route_id, arguments: 'a'); */
                      }),
                );
              }),
        ),
        adContainer2
      ],
    );
  }
}

///////////////////////////////
///////////////////////////////

/////////////////////////////////
////////Category
class CategoryPage extends StatefulWidget {
  CategoryPage({Key? key, required}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<Cc1> zz1 = [
    for (int i = 0; i < Cc1s.Cc1_items.length; i++)
      if (box1!.get(Cc1s.Cc1_items[i].route_id, defaultValue: false))
        Cc1s.Cc1_items[i]
  ];

  @override
  void initState() {
    myBanner.dispose();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    myBanner.load();
    final AdWidget adWidget = AdWidget(ad: myBanner);
    final Container adContainer2 = adContainer1(adWidget, myBanner);
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: n2.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ExpansionTile(
                    title: Text(n2.elementAt(index)),
                    controlAffinity: ListTileControlAffinity.leading,
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: n3[index].length,
                          itemBuilder: (context1, index1) {
                            return Card(
                              child: ListTile(
                                  title: Text(Cc1s
                                      .Cc1_items[n3[index][index1]].mainDes),
                                  subtitle: Text(
                                      Cc1s.Cc1_items[n3[index][index1]].subDes),
                                  trailing: Wrap(
                                    spacing: 12, // space between two icons
                                    children: <Widget>[
                                      IconButton(
                                        icon: Icon(Icons.favorite,
                                            //color: box1!.isEmpty ? Colors.black : Colors.red),
                                            //color: z1[index] ? Colors.red : Colors.grey),
                                            color: box1!.get(
                                                    Cc1s
                                                        .Cc1_items[n3[index]
                                                            [index1]]
                                                        .route_id,
                                                    defaultValue: false)
                                                ? Colors.red
                                                : Colors.grey),
                                        onPressed: () {
                                          setState(() {
                                            //z1[index] = !z1[index];
                                            box1!.put(
                                                Cc1s
                                                    .Cc1_items[n3[index]
                                                        [index1]]
                                                    .route_id,
                                                !box1!.get(
                                                    Cc1s
                                                        .Cc1_items[n3[index]
                                                            [index1]]
                                                        .route_id,
                                                    defaultValue: false));
                                          });

                                          //box1!.put(Cc1s.Cc1_items[index].route_id, z1[index]);
                                        },
                                      ), // icon-1
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 7, 0, 0),
                                        child: Icon(Icons.navigate_next),
                                      ) // icon-2
                                    ],
                                  ),
                                  onTap: () {
                                    Get.toNamed(
                                      Cc1s.Cc1_items[n3[index][index1]]
                                          .route_id,
                                    );
                                  }),
                            );
                          })
                    ],
                  ),
                );
              }),
        ),
        adContainer2,
      ],
    );
  }
}
