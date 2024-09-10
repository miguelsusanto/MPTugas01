import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row (
      children: [
        Expanded (
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container (
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  "Toba Lake Campground", style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text("Medan, Sumatera Utara", style: TextStyle(color: Colors.grey[500]),
              )
            ],
          )
        ),
        const Icon(
          Icons.star, color: Colors.red,
        ),
        const Text(
          '41'
        ),
      ],
    ),
  );

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, "Call"),
        _buildButtonColumn(color, Icons.near_me, "Route"),
        _buildButtonColumn(color, Icons.share, "Share"),
      ],
    );

    Widget textSection = const Padding(padding: EdgeInsets.all(32),
    child: Text(
        "Lake Toba, located in the northern part of the island of Sumatra in Indonesia, is the largest volcanic lake in the world. It is about 100 kilometers long, 30 kilometers wide, and up to 505 meters deep. Formed in the caldera of a supervolcano following a massive eruption around 74,000 years ago, the lake is surrounded by steep, lush green hills and is known for its stunning natural beauty and tranquil environment. At the center of Lake Toba lies Samosir Island, which is roughly the size of Singapore and is one of the few islands located within a lake on another island. Samosir Island is culturally significant as it is home to the Batak people, an indigenous ethnic group known for their traditional houses, rich heritage, and unique customs. The lake is a popular tourist destination, attracting visitors for its breathtaking landscapes, rich cultural history, cool climate, and opportunities for relaxation, swimming, and boating. It is also a site of great geological interest, as the Toba eruption is believed to have been one of the most powerful volcanic events in Earth's history, with global climatic impacts.",
      softWrap: true,
      textAlign: TextAlign.justify,
    ),
    );

    return MaterialApp(
      title: 'Flutter Layout Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter layout"),
        ),
        body: ListView(
          children: [
            Image.asset('images/danautoba.jpeg', width: 600, height: 240, fit: BoxFit.cover),
            titleSection, buttonSection, textSection],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}
