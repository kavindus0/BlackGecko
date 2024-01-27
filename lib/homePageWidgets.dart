import 'package:flutter/material.dart';
import 'package:blackgecko/insideCrawWidgers.dart';
import 'package:animated_icon/animated_icon.dart';

class HomeButtons extends StatelessWidget {
  const HomeButtons(
      {super.key,
      required this.lableNameForHomeScreenButtons,
      required this.tagName,
      required this.imageName,
      required this.routeName});
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
                    MaterialPageRoute(builder: (context) => routeName));
                // Navigate back to first route when tapped.
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.black12),
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.all(15)),
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white70),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(color: Colors.white60),
                  ),
                ),
              ),
              child: Column(
                children: [
                  Hero(
                      tag: tagName,
                      child: Image.asset('assets/images/$imageName')),
                  Text(lableNameForHomeScreenButtons,
                      style: const TextStyle(
                          color: Color(0xffbbbbbbbb), fontSize: 50),
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

//////////////////////////////////////
// craw card and route endpoint -----------------------------------------------------

class CrawRoute extends StatelessWidget {
  const CrawRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Hero(
                tag: "craw",
                child: Image.asset(
                    height: 60,
                    width: 50,
                    fit: BoxFit.cover,
                    'assets/images/craw.png')),
            const Text('කපුටු හැඩලීම හා වසුරුකිරීම'),
          ],
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50,
            ),
            CrawDevideWidget(
              lableText: "කපුටන් හැඩලීම",
              tagTextCrawDevide: "hadala",
              route: hadalaRoute(),
            ),
            SizedBox(
              height: 50,
            ),
            CrawDevideWidget(
              lableText: "කපුටන් වසුරුකිරීම",
              tagTextCrawDevide: "wasuru",
              route: wasuruRoute(),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
