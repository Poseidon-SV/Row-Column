import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

////https://github.com/londonappbrewery/Flutter-Course-Resources
////flutter-layout-cheat-sheet
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //// Flutter Layout Cheat sheet
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          // To keep our content inside the area where there will be no notch or bazel
          // child: Container( // Containers with no children will be as big as
          //   // possible and it can have only one child(no image ans text in one
          //   height: 50,
          //   width: 100,
          //   margin: EdgeInsets.only(left:20), //It,s for outside of the widget or for container
          //   padding: EdgeInsets.all(15), // It's for inside of the widget or child of the container
          //   color: Colors.deepPurple,
          //   child: Text('Shubham'),
          // ),
          child: Row(
        // 'Row' same property as 'Column' just change 'height' to 'width'
        // Will try to take space vertically as much as possible
        // mainAxisSize: MainAxisSize.min,
        // verticalDirection: VerticalDirection.up,
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.red,
            // child: Text(
            //   'Container 1 😈',
            //   style: Theme.of(context).textTheme.bodyLarge,
            // ),
            width: 100,
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.yellow,
                // child: Text('Container 2'),
                width: 100,
                height: 100,
                // width: double.infinity,
              ),
              Container(
                color: Colors.green,
                width: 100,
                height: 100,
              )
            ],
          ),
          Container(
            color: Colors.blue,
            // child: Text('Container 3'),
            width: 100,
          ),
          // Banner(
          //   message: "Shubham's App",
          //   location: BannerLocation.topStart,
          // )
        ],
      )),
    ));
  }
}
