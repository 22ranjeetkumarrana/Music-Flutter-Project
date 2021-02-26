
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_lyrics_flutter_project/SecondPage.dart';
import 'package:connectivity/connectivity.dart';
import 'package:music_lyrics_flutter_project/model/NetworkController.dart';
import 'package:music_lyrics_flutter_project/model/SongHeaderModel.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}



class _FirstScreenState extends State<FirstScreen>
{
  bool isConnected;

  Future<SongModel> _songModelData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetConnect();
  }

  void GetConnect() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile)
    {
      setState(() {
        isConnected = true;
      });
    }
    else if (connectivityResult == ConnectivityResult.wifi)
    {
      setState(() {
        isConnected = true;
      });
    }
  }

  @override
  Widget build(BuildContext context)
  {
    var screenSize = MediaQuery.of(context).size;
    ValueNotifier <List<SongModel>> _alphaListener = ValueNotifier(null);
    var _songModelData = getSongHeaderModelData();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Trending',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: isConnected == true ? ValueListenableBuilder(
        valueListenable: _alphaListener,
        builder: (context,child,value)
        {
          return ListView.builder(
              itemCount: 15,
              itemBuilder: (context,index)
              {
                return GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                    },
                    child: Card(
                      child: Container(
                        margin: EdgeInsets.only(left: 8.0,right: 8.0,top: 5.0),
                        height: 100.0,
                        width: screenSize.width,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.library_music,
                                color: Colors.black38,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 150,
                                    child: Text(
                                      //'${widget.data.type}'
                                      'Join the Song',
                                      //'${widget.a}',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    child: Text(
                                      'Vicky Beeching - At All Times '
                                          '("Painting the Invisible" Album Version) Lyrics ',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black38,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                width: 85,
                                child: Text(
                                  'Vicky Beeching',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black38,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                );
              }
          );
        },
      ): Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'No Internet Connection',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold
                ),
              ),
              GestureDetector(
                onTap: ()
                {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => super.widget));
                },
                child: Container(
                  width: 105,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.black87,
                      width: 1.5
                    )
                  ),
                  child: Center(
                    child: Text(
                      'Retry',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black87,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
    )
    );
  }
}
