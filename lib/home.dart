import 'package:flutter/material.dart';
import 'package:tugas12naufal/blocPackage.dart';
import 'package:tugas12naufal/blocStream.dart';



class home extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<home> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(" Naufal APP (TUGAS 12) "),),

        body: Center (child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(
              child: Text(' Bloc State Stream Controller '),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return blocStream();
                }));
              },
            ),
            RaisedButton(
              child: Text(' Multi Provider State '),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return FlutterPackagePage();
                }));
              },
            ),
          ],
        ),
        ),
      ),
    );
  }
}
