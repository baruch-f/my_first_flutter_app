import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/secondPage.dart';

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() => MyCustomFormState();
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height,
          width  = MediaQuery.of(context).size.width,
          form_label_size = 18.0,
          form_label_height = 2.0;

    return Form(
        key: _formKey,
        child: Align(
        alignment: Alignment.bottomCenter,
            child: Container(
                width: width,
                child: Wrap(
                    spacing: 2.0,
                    direction: Axis.vertical,
                    children: [
                        Text(
                            'Enter your email',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                height: form_label_height,
                                fontSize: form_label_size,
                                decoration: TextDecoration.none,
                                color: Colors.white
                            )
                        ),
                      Container(
                        width: width,
                        child: TextFormField(
                            controller: myController,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                            ),
                            autofocus: false,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                        ),
                      ),
                      Text(
                            'Enter your password',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                height: form_label_height,
                                fontSize: form_label_size,
                                decoration: TextDecoration.none,
                                color: Colors.white
                            )
                      ),
                      Container(
                        width: width,
                        child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                              ),
                              autofocus: false,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                      ),
                      Container(
                          width: width,
                          height: 70,
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                  width: double.infinity,
                                  child: RaisedButton(
                                      onPressed: () {
                                        if (_formKey.currentState.validate()) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => SecondPage(text: myController.text,))
                                          );
                                        }
                                      },
                                      padding: EdgeInsets.only(top: 14, bottom: 14),
                                      color: Colors.amber,
                                      textColor: Colors.white,
                                      child: Text(
                                          'SIGNUP',
                                          style: TextStyle(
                                          fontSize: form_label_size*1.3,
                                          ),
                                      ),
                                  ),
                              ),
                          ),
                      ),
                    ],
                )
            )
        )
    );
  }
}
