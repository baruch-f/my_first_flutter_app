import 'package:flutter/material.dart';
import 'homePageForm.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    final height = MediaQuery.of(context).size.height,
          width  = MediaQuery.of(context).size.width;
    return Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/homepage/bg.jpg"),
                fit: BoxFit.cover
            ),
          ),
          child: Stack(
              children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(top: height/10, bottom: height/10),
                                child: Image(image: AssetImage("assets/images/homepage/logo.png"), height: height/10),
                                width: width,
                            ),
                            Text(
                                  'Some text\nTExt some',
                                  style: TextStyle(
                                  height: 2,
                                  fontSize: 22,
                                  decoration: TextDecoration.none,
                                  color: Colors.white),
                            )
                          ]
                      )
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: height,
                          child: Scaffold(
                              resizeToAvoidBottomInset: true,
                              body: MyCustomForm()
                          )
                      )
                  )
              ]
          ),
    );
  }
}