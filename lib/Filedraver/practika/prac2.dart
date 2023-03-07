// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData.dark(),
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
//       appBar: AppBar(
//         title: Text('Flutter Demo'),
//       ),
//       backgroundColor: Colors.indigo[900],
//       body: Center(
//         child: Transform.rotate(
//           angle: 0.3,
//           child: Container(
//               // color: Colors.green,
//               height: 300,
//               width: double.infinity,
//               alignment: Alignment(-1, -1),
//               margin: EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 // gradient: LinearGradient(colors: [Colors.red, Colors.cyan])
//                 image: DecorationImage(
//                     image: Image.network(
//                             'https://u-stena.ru/upload/iblock/754/75472003979c814f83600fcc81c90d90.jpg')
//                         .image,
//                     fit: BoxFit.cover),
//                 borderRadius: BorderRadius.circular(20),

//                 border: Border.all(
//                   color: Colors.black,
//                   width: 8,
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                       color: Colors.black45,
//                       offset: Offset(-5, 5),
//                       blurRadius: 5,
//                       spreadRadius: 5)
//                 ],
//               ),
//               child: Opacity(
//                 opacity: 1,
//                 child: Text(
//                   '   I love you !!!',
//                   textDirection: TextDirection.ltr,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 55,
//                       fontStyle: FontStyle.italic,
//                       fontWeight: FontWeight.w800),
//                 ),
//               )),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

//imported google's material design library
void main() {
  runApp(
      /**Our App Widget Tree Starts Here**/
      MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('GeeksforGeeks'),
        backgroundColor: Colors.greenAccent[400],
        centerTitle: true,
      ), //AppBar
      body: Center(
        /** Card Widget **/
        child: Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Colors.greenAccent[100],
          child: SizedBox(
            width: 300,
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green[500],
                    radius: 108,
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png"), //NetworkImage
                      radius: 100,
                    ), //CircleAvatar
                  ), //CircleAvatar
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  Text(
                    'GeeksforGeeks',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.green[900],
                      fontWeight: FontWeight.w500,
                    ), //Textstyle
                  ), //Text
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  const Text(
                    'GeeksforGeeks is a computer science portal for geeks at geeksforgeeks.org. It contains well written, well thought and well explained computer science and programming articles, quizzes, projects, interview experiences and much more!!',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green,
                    ), //Textstyle
                  ), //Text
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  SizedBox(
                    width: 100,

                    child: ElevatedButton(
                      onPressed: () => 'Null',
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green)),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Row(
                          children: const [
                            Icon(Icons.touch_app),
                            Text('Visit')
                          ],
                        ),
                      ),
                    ),
                    // RaisedButton is deprecated and should not be used
                    // Use ElevatedButton instead

                    // child: RaisedButton(
                    // onPressed: () => null,
                    // color: Colors.green,
                    // child: Padding(
                    //	 padding: const EdgeInsets.all(4.0),
                    //	 child: Row(
                    //	 children: const [
                    //		 Icon(Icons.touch_app),
                    //		 Text('Visit'),
                    //	 ],
                    //	 ), //Row
                    // ), //Padding
                    // ), //RaisedButton
                  ) //SizedBox
                ],
              ), //Column
            ), //Padding
          ), //SizedBox
        ), //Card
      ), //Center
    ), //Scaffold
  ) //MaterialApp
      );
}
