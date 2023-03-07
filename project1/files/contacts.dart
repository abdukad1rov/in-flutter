import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return App2();
  }
}

class App2 extends StatefulWidget {
  @override
  State<App2> createState() => _App2State();
}

class _App2State extends State<App2> {
  var _currentStep = 0;
  var _radioValue = 1;
  var _radioValue1 = 1;
  var _radioValue2 = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Theme(
          data: ThemeData(
              primaryColor: Colors.indigo,
              colorScheme: ColorScheme.light(primary: Colors.indigo)),
          child: Stepper(
            type: StepperType.vertical,
            currentStep: _currentStep,
            onStepContinue: _currentStep < 2
                ? () => setState(() => _currentStep += 1)
                : null,
            onStepCancel: _currentStep > 0
                ? () => setState(() => _currentStep -= 1)
                : null,
            steps: [
              Step(
                  title: Text(
                    'CAR',
                  ),
                  isActive: true,
                  content: Column(children: [
                    Image(
                        image: NetworkImage(
                            'https://www.hdcarwallpapers.com/walls/2014_aston_martin_v8_vantage_n430_3-wide.jpg')),
                    Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: _radioValue,
                            activeColor: Colors.pink,
                            onChanged: (int? inValue) {
                              setState(() {
                                _radioValue = inValue!;
                              });
                            }),
                        Text(
                          "Смотреть",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 2,
                            groupValue: _radioValue,
                            activeColor: Colors.pink,
                            onChanged: (int? inValue) {
                              setState(() {
                                _radioValue = inValue!;
                              });
                            }),
                        Text(
                          "Скачать",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 3,
                            groupValue: _radioValue,
                            activeColor: Colors.pink,
                            onChanged: (int? inValue) {
                              setState(() {
                                _radioValue = inValue!;
                              });
                            }),
                        Text(
                          'Поделиться',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )
                  ])),
              Step(
                  title: Text('IPHONE'),
                  isActive: true,
                  content: Column(children: [
                    Image(
                        image: NetworkImage(
                            'https://avatars.mds.yandex.net/i?id=4f835d2cac24759833f993927dec9d6bc6ff5522-5294598-images-thumbs&n=13')),
                    Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: _radioValue1,
                            activeColor: Colors.pink,
                            onChanged: (int? inValue) {
                              setState(() {
                                _radioValue1 = inValue!;
                              });
                            }),
                        Text(
                          "Смотреть",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 2,
                            groupValue: _radioValue1,
                            activeColor: Colors.pink,
                            onChanged: (int? inValue) {
                              setState(() {
                                _radioValue1 = inValue!;
                              });
                            }),
                        Text(
                          "Скачать",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 3,
                            groupValue: _radioValue1,
                            activeColor: Colors.pink,
                            onChanged: (int? inValue) {
                              setState(() {
                                _radioValue1 = inValue!;
                              });
                            }),
                        Text(
                          "Поделиться",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )
                  ])),
              Step(
                title: Text("MOTOBIKE"),
                isActive: true,
                content: Column(children: [
                  Image(
                      image: NetworkImage(
                          "https://i.pinimg.com/originals/12/a7/fb/12a7fbb2ba29ce90d8e08e8519490dfa.jpg")),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: _radioValue2,
                          activeColor: Colors.pink,
                          onChanged: (int? inValue) {
                            setState(() {
                              _radioValue2 = inValue!;
                            });
                          }),
                      Text(
                        "Смотреть",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: _radioValue2,
                          activeColor: Colors.pink,
                          onChanged: (int? inValue) {
                            setState(() {
                              _radioValue2 = inValue!;
                            });
                          }),
                      Text(
                        "Скачать",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 3,
                          groupValue: _radioValue2,
                          activeColor: Colors.pink,
                          onChanged: (int? inValue) {
                            setState(() {
                              _radioValue2 = inValue!;
                            });
                          }),
                      Text(
                        "Поделиться",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
