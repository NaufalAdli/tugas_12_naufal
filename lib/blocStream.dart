import 'package:flutter/material.dart';
import 'color_bloc.dart';

class blocStream extends StatefulWidget {
  @override
  _blocStreamState createState() => _blocStreamState();
}

class _blocStreamState extends State<blocStream> {
  ColorBloc bloc = ColorBloc();
  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc State Stream Controller",),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: null,
            backgroundColor: Colors.greenAccent,
            onPressed: () {
              bloc.eventSink.add(ColorEvent.to_greenAcccent);
            },
          ),
          SizedBox(
            height: 50,
            width: 32,
          ),
          FloatingActionButton(
              heroTag: null,
              backgroundColor: Colors.redAccent,
              onPressed: () {
                bloc.eventSink.add(ColorEvent.to_redAccent);
              }),
        ],
      ),
      body: Center(
        child: StreamBuilder(
          stream: bloc.stateStream,
          initialData: Colors.greenAccent,
          builder: (context, snapshot) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 500),
              color: snapshot.data,
              width: 200,
              height: 200,
            );
          },
        ),
      ),
    );
  }
}