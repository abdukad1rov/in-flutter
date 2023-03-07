import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  final _text = TextEditingController();
  final _text1 = TextEditingController();
  final _pas = TextEditingController();
  final _age = TextEditingController();
  bool _validate = false;
  bool _validate1 = false;
  bool _validate2 = false;
  bool _validate3 = false;
  void dispose() {
    _age.dispose();
    _text.dispose();
    super.dispose();
  }
  // var _formKey = GlobalKey<FormState>();
  // var isLoading = false;

  // void _submit() {
  //   String? validatePassword(String? value) {
  //     if (value == null || value.isEmpty) {
  //       return 'Пароль не может быть пустым';
  //     } else if (value.length < 8) {
  //       return 'Пароль должен содержать не менее 8 символов';
  //     } else {
  //       return null;
  //     }
  //   }

  //   // final isValid = _formKey.currentState!.validate();
  //   // if (!isValid) {
  //   //   return;
  //   // }
  //   // _formKey.currentState!.save();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100),
      child: Center(
        child: Form(
          child: ListView(
            padding: EdgeInsets.all(40.0),
            children: <Widget>[
              TextField(
                controller: _text,
                decoration: InputDecoration(
                  errorText: _validate1 ? 'Value Can\'t Be Empty' : null,
                  labelText: 'SurName',
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                  ),
                  hintText: "Abdukadiov farhad",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 10),
                child: TextField(
                  controller: _text1,
                  decoration: InputDecoration(
                    errorText: _validate3 ? 'Value Can\'t Be Empty' : null,
                    labelText: 'Email address',
                    prefixIcon: Icon(Icons.email_outlined),
                    suffixIcon: Icon(
                      Icons.delete_outline,
                      color: Colors.red,
                    ),
                    hintText: "xxxxxxx@gmail.com",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _pas,
                  // validator: (String? _pas) {
                  //   if (_pas!.length < 10) {
                  //     return 'Password must be >=10 in lenvth';
                  //   }
                  //   return null;
                  // },
                  decoration: InputDecoration(
                    errorText: _validate2 ? 'Value Can\'t Be Empty' : null,
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(
                      Icons.delete_outline,
                      color: Colors.red,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                  ),

                  onFieldSubmitted: (value) {},
                  obscureText: true,
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return 'Enter a valid password!';
                  //   }
                  //   return null;
                  // }
                  // decoration: InputDecoration(
                  //   labelText: 'Pasword',
                  //   prefixIcon: Icon(Icons.person),
                  //   suffixIcon: Icon(
                  //     Icons.delete_outline,
                  //     color: Colors.red,
                  //   ),
                  //   hintText: "123456",
                  // enabledBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  //   borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  // ),
                  // ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: TextFormField(
                  controller: _age,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    errorText: _validate ? 'Value Can\'t Be Empty' : null,
                    labelText: 'Age',
                    hintText: "22",
                    prefixIcon: Icon(Icons.date_range),
                    suffixIcon: Icon(
                      Icons.delete_outline,
                      color: Colors.red,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    //   borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    // ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _text.text.isEmpty
                            ? _validate1 = true
                            : _validate1 = false;
                        _text1.text.isEmpty
                            ? _validate3 = true
                            : _validate3 = false;
                        _age.text.isEmpty
                            ? _validate = true
                            : _validate = false;
                        _pas.text.isEmpty
                            ? _validate2 = true
                            : _validate2 = false;
                      });
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'BUTTON',
                          style: TextStyle(
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
              // BackButtonIcon()
              // RaisedButton(
              //   onPressed: () {},
              //   child: Text("Submit"),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
