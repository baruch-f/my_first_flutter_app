import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
    final String text;
    SecondPage({Key key, @required this.text}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      final height = MediaQuery.of(context).size.height,
            width  = MediaQuery.of(context).size.width;
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(text),
        ),
        body: Stack(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: Container(
                    height: height/2.3,
                    width: width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/homepage/bg.jpg"),
                            fit: BoxFit.cover
                        ),
                    ),
                ),
            ),
            Align(
                alignment: Alignment.center,
                child: Container(
                  child: Image(image: AssetImage("assets/images/homepage/h4.png"), height: height/5),
                )
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Wrap(
                    spacing: 2.0,
                    direction: Axis.vertical,
                    alignment: WrapAlignment.center,
                    children: [
                      Container(
                          width: width,
                          child: Text(
                            'Heading',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                height: 2,
                                fontSize: 26,
                                fontWeight: FontWeight.w900,
                                decoration: TextDecoration.none,
                                color: Colors.white
                            ),
                          ),
                      ),
                      Container(
                        width: width,
                        child: Text(
                          'Text texttext text text text text text text text '
                          'text text text text text text text text text text text',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              height: 1.5,
                              fontSize: 17,
                              decoration: TextDecoration.none,
                              color: Colors.white
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width,
                        child: RaisedButton(
                          onPressed: () {
                              Navigator.pop(context);;
                          },
                          padding: EdgeInsets.only(top: 14, bottom: 14),
                          color: Colors.amber,
                          textColor: Colors.white,
                          child: Text(
                            'SIGNUP',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                    ]
                )
            )
          ]
        ),
      );
    }
}

class MailMessage {
  final String mailString;
  MailMessage(this.mailString);
}
