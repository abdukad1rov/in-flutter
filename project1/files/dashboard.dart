import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return App1();
  }
}

class App1 extends StatefulWidget {
  @override
  State<App1> createState() => _App1State();
}

class _App1State extends State<App1> {
  bool _darkMode = false;

  void _toggleDarkMode() {
    setState(() {
      _darkMode = !_darkMode;
    });
  }

  var _checkboxValue = false;
  var _checkboxValue1 = false;
  var _checkboxValue2 = false;
  @override
  Widget build(BuildContext context) {
    final lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.lightBlue,
    );

    final darkTheme = ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.grey,
    );

    final theme = _darkMode ? darkTheme : lightTheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            padding: EdgeInsetsDirectional.only(start: 340),
            child: Switch(
              value: _darkMode,
              onChanged: (value) {
                _toggleDarkMode();
              },
            ),
          ),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(
                color: Colors.black,
                Icons.car_rental,
              ),
            ),
            Tab(
              icon: Icon(color: Colors.black, Icons.phone_android),
            ),
            Tab(
              icon: Icon(color: Colors.black, Icons.motorcycle_rounded),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Center(
            child: Container(
              child: Expanded(
                child: SizedBox(
                  width: 800,
                  height: 428,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.indigo[700],
                    elevation: 80,
                    shadowColor: Colors.red,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 25),
                          child: Text(
                            "CAR",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 15),
                          child: Image(
                              image: NetworkImage(
                                  'https://www.hdcarwallpapers.com/walls/2014_aston_martin_v8_vantage_n430_3-wide.jpg')),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 100, top: 12),
                          child: Row(children: [
                            Text(
                              "Это Машина ?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                            Transform.scale(
                              scale: 1.5,
                              child: Checkbox(
                                  value: _checkboxValue,
                                  activeColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0))),
                                  onChanged: (bool? inValue) {
                                    setState(() {
                                      _checkboxValue = inValue!;
                                    });
                                  }),
                            ),
                          ]),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              child: Expanded(
                child: SizedBox(
                  width: 800,
                  height: 428,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.indigo[700],
                    elevation: 80,
                    shadowColor: Colors.red,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 25),
                          child: Text(
                            "IPHONE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 15),
                          child: Image(
                              image: NetworkImage(
                                  'https://avatars.mds.yandex.net/i?id=4f835d2cac24759833f993927dec9d6bc6ff5522-5294598-images-thumbs&n=13')),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 100, top: 12),
                          child: Row(children: [
                            Text(
                              "Это Iphone ?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                            Transform.scale(
                              scale: 1.5,
                              child: Checkbox(
                                  value: _checkboxValue1,
                                  activeColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0))),
                                  onChanged: (bool? inValue) {
                                    setState(() {
                                      _checkboxValue1 = inValue!;
                                    });
                                  }),
                            ),
                          ]),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              child: Expanded(
                child: SizedBox(
                  width: 800,
                  height: 428,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.indigo[700],
                    elevation: 80,
                    shadowColor: Colors.red,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 25),
                          child: Text(
                            "MOTOBIKE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 15),
                          child: Image(
                              image: NetworkImage(
                                  'https://i.pinimg.com/originals/12/a7/fb/12a7fbb2ba29ce90d8e08e8519490dfa.jpg')),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 100),
                          child: Row(children: [
                            Text(
                              "Это Мотоцикл ?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                            Transform.scale(
                              scale: 1.5,
                              child: Checkbox(
                                  value: _checkboxValue2,
                                  activeColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0))),
                                  onChanged: (bool? inValue) {
                                    setState(() {
                                      _checkboxValue2 = inValue!;
                                    });
                                  }),
                            ),
                          ]),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
