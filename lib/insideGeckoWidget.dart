import 'package:flutter/material.dart';

///////// Stateful Widget With SearchBar and ListView //////////////////////////
// gecko card and endpoint -----------------------------------------------------

class GeckoRoute extends StatefulWidget {
  const GeckoRoute({super.key});

  @override
  State<GeckoRoute> createState() => _GeckoRouteState();
}

class _GeckoRouteState extends State<GeckoRoute> {

  @override
  Widget build(BuildContext context) { /////////mettnin pahala search eka
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Hero(tag: "gecko", child: Image.asset(width: 70,fit:BoxFit.cover,height:70,'assets/images/gecko.png',)),
            const Text('හූනන් ඇගට වැටීම'),
          ],
        ),
      ),
      body: const Center(
        child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(height: 50,child: SearchBar(
                  leading: Icon(Icons.search_outlined),
                  hintText: ("Head"),
                )),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                ],
              ),
            ],
        ),
      ),



    );
  }
}