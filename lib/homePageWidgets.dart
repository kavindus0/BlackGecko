import 'package:flutter/material.dart';

class HomeButtons extends StatelessWidget {
  const HomeButtons({super.key,required this.lableNameForHomeScreenButtons,required this.tagName,[required this.imageName],required this.routeName});
  final String lableNameForHomeScreenButtons;
  final String imageName;
  final String tagName;
  final Widget routeName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: 400,
        height: 100,
        child: Column(
          children: [
            FilledButton.tonal(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> routeName ));
                // Navigate back to first route when tapped.
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black12),
                padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white70),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0), side: const BorderSide(color: Colors.white60),),
                ),
              ),
              child: Column(
                children: [
                  Hero(tag: tagName,
                      child: Image.asset('assets/images/$imageName')),
                  Text(lableNameForHomeScreenButtons,style: const TextStyle(color: Color(0xffbbbbbbbb),fontSize: 50),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// gecko card and endpoint -----------------------------------------------------

class GeckoRoute extends StatelessWidget {
  const GeckoRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Hero(tag: "gecko", child: Image.asset(width: 70,fit:BoxFit.cover,height:70,'assets/images/gecko.png',)),
            const Text('හූනන් ඇගට වැටීම'),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context) ;
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

// craw card and route endpoint -----------------------------------------------------

class CrawRoute extends StatelessWidget {
  const CrawRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Row(
          children: [
            Hero(tag: "craw", child: Image.asset(height: 60,width:50,fit:BoxFit.cover,'assets/images/craw.png')),
            const Text('කපුටු හැඩලීම හා වසුරුකිරීම'),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            HomeButtons(lableNameForHomeScreenButtons: "වසුරු කිරීම", tagName: 'wasuru', routeName: routeName)
            HomeButtons(lableNameForHomeScreenButtons: "හැඩලීම", tagName: 'hadala', routeName: routeName)
          ],
        ),






      ),
    );
  }
}

// gecko card and endpoint -----------------------------------------------------

class GeckoRoute extends StatelessWidget {
  const GeckoRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Hero(tag: "gecko", child: Image.asset(width: 70,fit:BoxFit.cover,height:70,'assets/images/gecko.png',)),
            const Text('හූනන් ඇගට වැටීම'),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context) ;
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

// gecko card and endpoint -----------------------------------------------------

class wasuruRoute extends StatelessWidget {
  const wasuruRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Hero(tag: "wasuru", child: Image.asset(width: 70,fit:BoxFit.cover,height:70,'assets/images/gecko.png',)),
            const Text('හූනන් ඇගට වැටීම'),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context) ;
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}


