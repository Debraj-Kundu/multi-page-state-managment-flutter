import 'package:flutter/material.dart';
import 'package:state_managment/secpage.dart';

class HomePage extends StatefulWidget {
  
  HomePage(
    {this.incrementCounter,
    this.decrementCounter,
    this.counter}
  );

  final int counter;
  final ValueChanged<void> decrementCounter;
  final ValueChanged<void> incrementCounter;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _onPressed(){
    widget.incrementCounter(null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: 0.5,
            child: Text(
              widget.counter.toString(),
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Container(
              width: 140,
              height: 50,
              child: RaisedButton(
                child: Text(
                  '2nd Page',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageTwo(
                        widget.decrementCounter,
                        counter: widget.counter,
                      )),
                    );
                  });
                },
                color: Colors.deepOrange,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _onPressed,
      ),
    );
  }
}
