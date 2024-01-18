import 'package:flutter/material.dart';
import 'package:blackgecko/SearchPage/gecko.dart';

///////// Stateful Widget With SearchBar and ListView //////////////////////////
// gecko card and endpoint -----------------------------------------------------

class GeckoRoute extends StatefulWidget {
  const GeckoRoute({super.key});

  @override
  State<GeckoRoute> createState() => _GeckoRouteState();
}

class _GeckoRouteState extends State<GeckoRoute> {

  List<Gecko> _strGecko = [
    Gecko(positionName: "Head", Effect: "dead"),
    Gecko(positionName: "body", Effect: "kds"),
    Gecko(positionName: "arm", Effect: "cancer"),
    Gecko(positionName: "eye", Effect: "paraloid"),
    Gecko(positionName: "lips", Effect: "pregnent"),
  ] ;

  List<Gecko> _foundedSearchResult = [];

  @override
  void initState() {


    super.initState();
    setState(() {
      _foundedSearchResult = _strGecko;
    });
  }

  onSearch(String search){
    print(search);
  }

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
      body: Center(
        child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(height: 50,child: SearchBar(
                  onChanged: (value) => onSearch(value),
                  leading: Icon(Icons.search_outlined),
                  hintText: ("Head"),
                )),
              ),
            ],
        ),
      ),



    );
  }
}