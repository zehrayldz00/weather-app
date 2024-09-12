import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';


class MainScreen extends StatefulWidget {

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/cloudy.png'),
            fit: BoxFit.cover,
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 100,),
            Container(
              child: Icon(
                WeatherIcons.cloud,
                size: 150,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Text("12°",
              style: TextStyle(
                color:Colors.white,
                fontSize: 90.0,
                letterSpacing: -5,
              ),
              ),
            )

          ],
        ) ,
      )

    );
  }
}
