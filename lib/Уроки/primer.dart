import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Good Morning !!!'),
//         ),
//         body: Column(children: [
//           Expanded(
//             child: Container(
//               padding: const EdgeInsets.all(50),
//               color: Colors.indigo[700],
//             ),
//           ),
//           Expanded(
//               child: Container(
//                   padding: const EdgeInsets.all(50), color: Colors.red))
//         ]),
//       ),
//     );
//   }
// }

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyStateApp();
  }
}

class _MyStateApp extends State<MyApp> {
  int changer1 = 0;
  int changer2 = 1;
  List<Color> tus = [Colors.indigo.shade900, Colors.red.shade900];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Good Morning !!!'),
        ),
        body: Column(children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(50),
              color: tus[(changer1) % 2],
            ),
          ),
          Expanded(
              child: Container(
                  padding: const EdgeInsets.all(50),
                  color: tus[(changer2) % 2]))
        ]),
        floatingActionButton: FloatingActionButton.small(
            child: const Icon(Icons.abc_outlined),
            onPressed: () {
              setState(() {
                changer1++;
                changer2++;
              });
            }),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// //imported google's material design library
// void main() {
//   runApp(
//       /**Our App Widget Tree Starts Here**/
//       MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: const Text('GeeksforGeeks'),
//         backgroundColor: Colors.greenAccent[400],
//         centerTitle: true,
//       ), //AppBar
//       body: Center(
//         /** Card Widget **/
//         child: Card(
//           elevation: 50,
//           shadowColor: Colors.black,
//           color: Colors.greenAccent[100],
//           child: SizedBox(
//             width: 300,
//             height: 500,
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 children: [
//                   CircleAvatar(
//                     backgroundColor: Colors.green[500],
//                     radius: 108,
//                     child: const CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           "https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png"), //NetworkImage
//                       radius: 100,
//                     ), //CircleAvatar
//                   ), //CircleAvatar
//                   const SizedBox(
//                     height: 10,
//                   ), //SizedBox
//                   Text(
//                     'GeeksforGeeks',
//                     style: TextStyle(
//                       fontSize: 30,
//                       color: Colors.green[900],
//                       fontWeight: FontWeight.w500,
//                     ), //Textstyle
//                   ), //Text
//                   const SizedBox(
//                     height: 10,
//                   ), //SizedBox
//                   const Text(
//                     'GeeksforGeeks is a computer science portal for geeks at geeksforgeeks.org. It contains well written, well thought and well explained computer science and programming articles, quizzes, projects, interview experiences and much more!!',
//                     style: TextStyle(
//                       fontSize: 15,
//                       color: Colors.green,
//                     ), //Textstyle
//                   ), //Text
//                   const SizedBox(
//                     height: 10,
//                   ), //SizedBox
//                   SizedBox(
//                     width: 100,

//                     child: ElevatedButton(
//                       onPressed: () => 'Null',
//                       style: ButtonStyle(
//                           backgroundColor:
//                               MaterialStateProperty.all(Colors.green)),
//                       child: Padding(
//                         padding: const EdgeInsets.all(4),
//                         child: Row(
//                           children: const [
//                             Icon(Icons.touch_app),
//                             Text('Visit')
//                           ],
//                         ),
//                       ),
//                     ),
//                     // RaisedButton is deprecated and should not be used
//                     // Use ElevatedButton instead

//                     // child: RaisedButton(
//                     // onPressed: () => null,
//                     // color: Colors.green,
//                     // child: Padding(
//                     //	 padding: const EdgeInsets.all(4.0),
//                     //	 child: Row(
//                     //	 children: const [
//                     //		 Icon(Icons.touch_app),
//                     //		 Text('Visit'),
//                     //	 ],
//                     //	 ), //Row
//                     // ), //Padding
//                     // ), //RaisedButton
//                   ) //SizedBox
//                 ],
//               ), //Column
//             ), //Padding
//           ), //SizedBox
//         ), //Card
//       ), //Center
//     ), //Scaffold
//   ) //MaterialApp
//       );
// }
