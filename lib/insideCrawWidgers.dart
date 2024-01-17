import 'package:flutter/material.dart';


class CrawDevideWidget extends StatelessWidget {
  const CrawDevideWidget({
    required this.lableText,
    required this.tagTextCrawDevide,
    required this.route,
    super.key,
  });
  final String lableText;
  final String tagTextCrawDevide;
  final Widget route;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28))),onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      }, child:  Hero(tag:tagTextCrawDevide,child: Text(lableText,style: Theme.of(context).textTheme.headlineMedium,))),
    );
  }
}



// wasuru card and endpoint -----------------------------------------------------

class wasuruRoute extends StatelessWidget {
  const wasuruRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            // Image.asset(width: 70,fit:BoxFit.cover,height:70,'assets/images/gecko.png',),
            Hero(tag:"wasuru",child: Text('කපුටන් වසුරුකිරීම',style: Theme.of(context).textTheme.headlineMedium)),
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

// hadala card and endpoint -----------------------------------------------------

class hadalaRoute extends StatelessWidget {
  const hadalaRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Row(
          children: [
            // Image.asset(width: 70,fit:BoxFit.cover,height:70,'assets/images/gecko.png',),
            Hero(tag:"hadala",child: Expanded(child: Text('කපුටන් හැඩලීම',style: Theme.of(context).textTheme.headlineMedium,))),
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

