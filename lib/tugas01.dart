import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});


  Widget searchBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40.0), // Bubble effect
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // Position of shadow
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none, // Remove default border
          icon: Icon(Icons.search, color: Colors.grey),
        ),
      ),
    );
  }

  Widget _buildGridItem(IconData icon, String label) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 70,
              color: Colors.blueAccent,
            ),
            SizedBox(height: 10),
            Text(
              label,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.calendar_month, "Today"),
        _buildButtonColumn(color, Icons.settings, "Settings"),
        _buildButtonColumn(color, Icons.calendar_month, "Tomorrow"),
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
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,  // Align to the left
            children: const [
              Text(
                "Good Morning",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Text(
                "Dulanjali",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          toolbarHeight: 180,
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: searchBar(context),
                  ),
                ),

                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(50.0),
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30,
                      children: [
                        _buildGridItem(Icons.fastfood, 'Diet Plan'),
                        _buildGridItem(Icons.fitness_center, 'Exercises'),
                        _buildGridItem(Icons.medical_services, 'Medical Tips'),
                        _buildGridItem(Icons.self_improvement, 'Yoga')
                      ],
                    )
                  )
                )
              ],
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.white, // Optional: Add a background color to the ButtonBar
                padding: EdgeInsets.all(10.0),
                child: buttonSection,
              ),
            ),
          ]
        )
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color, size: 32),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}
