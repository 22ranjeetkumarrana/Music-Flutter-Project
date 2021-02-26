
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondPage extends StatefulWidget
{
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage>
{
  @override
  Widget build(BuildContext context)
  {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Track Details',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16.0
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: screenSize.height,
          width: screenSize.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: new Container(
                  margin: EdgeInsets.all(10.0),
                  width: screenSize.width,
                  height: screenSize.height,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: new Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Patience ',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 18.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: new Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Artist ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Vicky Beeching ',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 18.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: new Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Album Name ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Join the Song ',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 18.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: new Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Explicit ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'False ',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 18.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: new Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Rating ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                '98 ',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 18.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: Text(
                  'Lyrics ',
                  style: TextStyle(
                    fontSize: 16.0,
                    color:  Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  width: screenSize.width,
                  child: Expanded(
                    flex: 1,
                    child: Text(
                      'I don not know what the future holds'
                    'Or what lies beyond my horizon'
                    'The years ahead are just out of sight'
                   ' Well, I think sometimes that You hide them'

                      'I don not know what the future holds'
                          'Or what lies beyond my horizon'
                          'The years ahead are just out of sight'
                          ' Well, I think sometimes that You hide them'
                          'I don not know what the future holds'
                          'Or what lies beyond my horizon'
                          'The years ahead are just out of sight'
                          ' Well, I think sometimes that You hide them'

                          'I don not know what the future holds'
                          'Or what lies beyond my horizon'
                          'The years ahead are just out of sight'
                          ' Well, I think sometimes that You hide them',
                      style: TextStyle(
                        fontSize: 16.0,
                        height: 1.5,
                        color: Colors.black
                      ),
                    ),
                  )
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
