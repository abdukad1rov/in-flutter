// import 'package:flutter/material.dart';

// void main() {
//   runApp(Container(
//       padding: EdgeInsets.only(top: 25, left: 10, right: 10),
//       color: Colors.teal,
//       child: Column(children: <Widget>[
//         Text('Hello Flutter from Metanit.com',
//             textDirection: TextDirection.ltr,
//             style: TextStyle(
//                 fontSize: 26,
//                 decoration: TextDecoration.lineThrough,
//                 decorationStyle: TextDecorationStyle.double)),
//         Text('Hello Flutter from Metanit.com',
//             textDirection: TextDirection.ltr,
//             style: TextStyle(
//                 fontSize: 26,
//                 decoration: TextDecoration.underline,
//                 decorationStyle: TextDecorationStyle.wavy,
//                 decorationColor: Colors.blue,
//                 decorationThickness: 2)),
//         Text('Hello Flutter from Metanit.com',
//             textDirection: TextDirection.ltr,
//             style: TextStyle(
//                 fontSize: 26,
//                 decoration: TextDecoration.underline,
//                 decorationStyle: TextDecorationStyle.dotted,
//                 decorationColor: Colors.red,
//                 decorationThickness: 3))
//       ])));
// }
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   bool _big = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Demo'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             AnimatedScale(
//               duration: Duration(seconds: 1),
//               scale: _big ? 5.0 : 1.0,
//               child: FlutterLogo(),
//             ),
//             ElevatedButton(
//               child: Text('change size'),
//               onPressed: () => setState(() => _big = !_big),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Transform.rotate(
//           angle: 1,
//           origin: Offset(100, 100),
//           child: Container(
//             height: 100,
//             width: 100,
//             color: Colors.blue,
//           ),
//         ),
//         Transform(
//           transform: Matrix4.skewX(0.3)..translate(10.0)..rotateZ(1),
//           child: Container(
//             height: 100,
//             width: 100,
//             color: Colors.green,
//           ),
//         ),
//         Transform.scale(
//           scale: 0.5,
//           origin: Offset(100, 100),
//           child: Container(
//             height: 200,
//             width: 200,
//             color: Colors.blue,
//           ),
//         ),
//         Transform.translate(
//           offset: Offset(50, -10),
//           child: Container(
//             height: 200,
//             width: 200,
//             color: Colors.blue,
//           ),
//         ),
//       ],
//     ));
//   }
// }

// import "package:flutter/material.dart";

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   _MyApp createState() => _MyApp();
// }

// class _MyApp extends State {
//   GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
//   var _checkboxValue = false;
//   var _switchValue = false;
//   var _sliderValue = .3;
//   var _radioValue = 1;
//   @override
//   Widget build(BuildContext inContext) {
//     return MaterialApp(
//         home: Scaffold(
//             body: Container(
//                 padding: EdgeInsets.all(50.0),
//                 child: Form(
//                     key: this._formKey,
//                     child: Column(children: [
//                       Checkbox(
//                           value: _checkboxValue,
//                           onChanged: (inValue) {
//                             setState(() {
//                               _checkboxValue = inValue!;
//                             });
//                           }),
//                       Switch(
//                           value: _switchValue,
//                           onChanged: (bool inValue) {
//                             setState(() {
//                               _switchValue = inValue;
//                             });
//                           }),
//                       Slider(
//                           min: 0,
//                           max: 20,
//                           value: _sliderValue,
//                           onChanged: (inValue) {
//                             setState(() => _sliderValue = inValue);
//                           }),
//                       Row(children: [
//                         Radio(
//                             value: 1,
//                             groupValue: _radioValue,
//                             onChanged: (inValue) {
//                               setState(() {
//                                 _radioValue = inValue!;
//                               });
//                             }),
//                         Text("Option 1")
//                       ]),
//                       Row(children: [
//                         Radio(
//                             value: 2,
//                             groupValue: _radioValue,
//                             onChanged: (inValue) {
//                               setState(() {
//                                 _radioValue = inValue!;
//                               });
//                             }),
//                         Text("Option 2")
//                       ]),
//                       Row(children: [
//                         Radio(
//                             value: 3,
//                             groupValue: _radioValue,
//                             onChanged: (inValue) {
//                               setState(() {
//                                 _radioValue = inValue!;
//                               });
//                             }),
//                         Text("Option 3")
//                       ])
//                     ])))));
//   }
// }

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
//           Expanded(
//             child: Column(
//               children: [
//                 Container(
//                   color: Colors.red,
//                   height: MediaQuery.of(context).size.height / 2,
//                 ),
//                 Container(
//                   color: Colors.blue,
//                   height: MediaQuery.of(context).size.height / 2,
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Column(
//               children: [
//                 Container(
//                   color: Colors.green,
//                   height: MediaQuery.of(context).size.height / 2,
//                 ),
//                 Container(
//                   color: Colors.yellow,
//                   height: MediaQuery.of(context).size.height / 2,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         appBarTheme: AppBarTheme(color: Colors.orange[800]),
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() {
//     return _HomePageState();
//   }
// }

// class _HomePageState extends State<HomePage> {
//   int currentIndex = 0;
//   final colors = [Colors.red, Colors.green, Colors.blue, Colors.yellow];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'MyFlutterApp',
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             currentIndex++;
//             currentIndex%=4;
//           });
//         },
//         child: Icon(Icons.android),
//       ),
//       body: Container(
//         alignment: Alignment.center,
//         child: Column(
//           children: [
//             Expanded(
//               child: Row(children: [
//                 Expanded(
//                   child: Container(
//                     color: colors[currentIndex],
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                       color: colors[(currentIndex + 3) % 4]),  //
//                 )
//               ]),
//             ),
//             /////////////////////////////////////////////////////////////////////
//             Expanded(
//                 child: Row(children: [
//                   Expanded(
//                     child: Container(
//                       color: colors[(currentIndex + 1) % 4],
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       color: colors[(currentIndex + 2) % 4],
//                     ),
//                   ),
//                 ])),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Split Screen'),
//       ),
//       body: GridView.count(
//         crossAxisCount: 2, // количество колонок в сетке
//         children: List.generate(4, (index) {
//           return Container(
//             color: Colors.blue,
//             margin: EdgeInsets.all(8.0),
//           );
//         }),
//       ),
//     );
//   }
// }
