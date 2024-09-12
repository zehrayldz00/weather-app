import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/utils/location.dart';


// For dynamic operations --> Stateful Class
class LoadingScreen extends StatefulWidget {

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  late LocationHelper locationData;
  //15.55

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // for gradient colors
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.green, Colors.brown]
          )
        ), //end of gradient color properties
        child: Center(
          child: SpinKitFadingCircle(
            color: Colors.white.withOpacity(0.6),
            size:130.0,
            duration: Duration(milliseconds: 1600),)
        ),
      ),
    );
  }
}
// End of Stateful Class
