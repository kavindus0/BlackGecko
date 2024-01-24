import 'package:blackgecko/CrawPoops.dart';
import 'package:blackgecko/CrawPoops.dart';
import 'package:flutter/material.dart';

class CrawPoops extends StatelessWidget {
  const CrawPoops({super.key});

  @override
  State<GeckoRoute> createState() => _GeckoRouteState();
}

class _GeckoRouteState extends State<GeckoRoute> {
  final List<Gecko> _strGecko = [
    const Gecko(positionName: "හිස", Effect: "කලහ"),
    const Gecko(positionName: "මුහුණ පුරා", Effect: "බන්ධු දර්ශන"),
    const Gecko(positionName: "ඇහි බැමි මැද", Effect: "බන්දු නාශ"),
    const Gecko(positionName: "ඇහි බැම", Effect: "රජුන්ගෙන් ගෞරව"),
    const Gecko(positionName: "ඇස", Effect: "සිර භය"),
    const Gecko(positionName: "නාසය", Effect: "ව්‍යාධි"),
    const Gecko(positionName: "උඩු තොල", Effect: "වසතු හානි"),
    const Gecko(positionName: "මුඛය", Effect: "භය"),
    const Gecko(positionName: "යටිතොල", Effect: "වස්තු ලැබීම"),
    const Gecko(positionName: "නිකට", Effect: "රාජ දඬුවම්"),
    const Gecko(positionName: "දකුණු කණ", Effect: "දීර්ඝායු"),
    const Gecko(positionName: "පපුව", Effect: "ධන ලාභ"),
    const Gecko(positionName: "තනය", Effect: "උතුම් ගෞරවයන්"),
    const Gecko(positionName: "බඩ", Effect: "ධන ලාභ"),
    const Gecko(positionName: "දකුණු ඇල", Effect: "දියුණු වීම"),
    const Gecko(positionName: "වම් ඇල", Effect: "මරණාරංචි"),
    const Gecko(positionName: "පිට කොන්ද", Effect: "ද්‍රව්‍යයන් ලාභ"),
    const Gecko(positionName: "පිට", Effect: "සුබ සම්පත්"),
    const Gecko(positionName: "ලිඟුව", Effect: "දරිද්‍ර"),
    const Gecko(positionName: "යෝනිය", Effect: "පුරුෂයාට අසුබ"),
    const Gecko(positionName: "වම් අත ඇඟිලි ", Effect: "මිත්‍රයන් කළහ"),
    const Gecko(positionName: "ගුදය", Effect: "වස්තු ලාභ"),
    const Gecko(positionName: "වම් කණ", Effect: "වාණිජ ලාභ"),
    const Gecko(positionName: "කලව", Effect: "පියාට විපත්"),
    const Gecko(positionName: "හිසකෙස්", Effect: "මර බිය"),
    const Gecko(positionName: "දකුණු කෙණ්ඩ", Effect: "බොහෝ පාඩු"),
    const Gecko(positionName: "බෙල්ල", Effect: "සතුරු හානි"),
    const Gecko(positionName: "වම් කෙන්ඩ", Effect: "කලහ"),
    const Gecko(positionName: "දකුණු උර", Effect: "නිරෝගි"),
    const Gecko(positionName: "ඇස ව‍ට", Effect: "සැප"),
    const Gecko(positionName: "වම් උර", Effect: "ස්ත්‍රී සැප"),
    const Gecko(positionName: "දකුණු පාදය", Effect: "දුක්"),
    const Gecko(positionName: "වම් වළලුකර", Effect: "කීර්ති"),
    const Gecko(positionName: "දකුණු පාදයේ ඇගිලි", Effect: "රාජ භය"),
    const Gecko(positionName: "දකුණු අත", Effect: "පෙම්වතියට අසුබ"),
    const Gecko(positionName: "වම් පාදයේ ඇගිලි", Effect: "රුදු සහිත‍ රෝග"),
    const Gecko(positionName: "වම් අත", Effect: "ශෝක"),
    const Gecko(positionName: "නියපොතු", Effect: "ධන හානි"),
    const Gecko(positionName: "දකුණු අත ඇඟිලි", Effect: "රාජ සම්මාන"),
    const Gecko(positionName: "ශරීරය පුරා දිව්වේ නම්", Effect: "දීර්ඝායුෂ"),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /////////mettnin pahala search eka
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Hero(
                tag: "gecko",
                child: Image.asset(
                  width: 70,
                  fit: BoxFit.cover,
                  height: 70,
                  'assets/images/gecko.png',
                )),
            const Text('හූනන් ඇගට වැටීම'),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchableList<Gecko>(
            initialList: _strGecko,
            style: const TextStyle(fontSize: 25),
            builder: (List<Gecko> list, int index, Gecko item) =>
                GeckoItem(item: item),
            filter: (value) => _strGecko
                .where(
                  (element) =>
                      element.positionName.toLowerCase().contains(value),
                )
                .toList(),
            emptyWidget: const EmptyView(),
            inputDecoration: InputDecoration(
              labelText: "Search Position",
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.blue,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class EmptyView extends StatelessWidget {
  const EmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.error,
          color: Colors.red,
        ),
        Text('no position is found with this name'),
      ],
    );
  }
}

class GeckoItem extends StatelessWidget {
  final Gecko item;

  const GeckoItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.positionName,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              Text(
                item.Effect,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
