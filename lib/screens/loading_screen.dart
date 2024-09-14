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
  Future<void> getLocationData() async{
    locationData = LocationHelper();
    await locationData.getCurrentLocation();

    if(locationData.latitude == null || locationData.longitude == null){
      print("Konum bilgileri gelmiyor.");
    } else{
      print("latitude : " + locationData.latitude.toString());
      print("longitude : " + locationData.longitude.toString());
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationData();
  }

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
