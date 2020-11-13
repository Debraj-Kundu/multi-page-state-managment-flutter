import 'package:flutter/material.dart';


class PageTwo extends StatefulWidget {
  
  PageTwo(
    this.decrementCounter, 
    {this.counter}
  );

  final int counter;
  final ValueChanged<void> decrementCounter;
  
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  
  void onPressed(){
    widget.decrementCounter(null);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page two'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: 0.5,
            child: Text(
              super.widget.counter.toString(),
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
                child: Text('Home Page', style: TextStyle(color: Colors.white),),
                onPressed: (){
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                color: Colors.deepOrange,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.remove),
        onPressed: onPressed,
      ),
    );
  }
}