import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:geolocator/geolocator.dart';

class WeatherWidget extends StatefulWidget {
  @override
  _WeatherWidgetState createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  var temperature = '';

  @override
  void initState() {
    super.initState();
    getCurrentTemperature();
  }

  void getCurrentTemperature() async {
    try {
      Position position = await Geolocator.getCurrentPosition();
      var apiKey = 'da6bda269b58771cea8ab99ed590bc1c';
      var lat = position.latitude;
      var lon = position.longitude;
      var apiUrl = 'api.openweathermap.org/data/2.5/forecast/daily?lat=44.34&lon=10.99&cnt=7&appid={API key}';
      http.Response response = await http.get(Uri.parse(apiUrl));
      var jsonResponse = jsonDecode(response.body);
      setState(() {
        temperature = jsonResponse['list']['temp'].toStringAsFixed(1);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Current Temperature'),
      ),
      body: Center(
        child: Text(
          '$temperature°C',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:geolocator/geolocator.dart';

// class WeatherWidget extends StatefulWidget {
//   @override
//   _WeatherWidgetState createState() => _WeatherWidgetState();
// }

// class _WeatherWidgetState extends State<WeatherWidget> {
//   var temperature = '';

//   @override
//   void initState() {
//     super.initState();
//     getCurrentTemperature();
//   }

//   void getCurrentTemperature() async {
//     try {
//       Position position = await Geolocator.getCurrentPosition();
//       var apiKey = 'da6bda269b58771cea8ab99ed590bc1c';
//       var lat = position.latitude;
//       var lon = position.longitude;
//       var apiUrl = 'https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={da6bda269b58771cea8ab99ed590bc1c}';
//       http.Response response = await http.get(Uri.parse(apiUrl));
//       var jsonResponse = jsonDecode(response.body);
//       setState(() {
//         temperature = jsonResponse['main']['temp'].toStringAsFixed(1);
//       });
//     } catch (e) {
//       print(e);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Current Temperature'),
//       ),
//       body: Center(
//         child: Text(
//           '$temperature°C',
//           style: TextStyle(fontSize: 40),
//         ),
//       ),
//     );
//   }
// }
