import 'package:flutter/material.dart';
import 'package:blackgecko/SearchPage/gecko.dart';
import 'package:searchable_listview/searchable_listview.dart';
import 'package:animated_icon/animated_icon.dart';
import 'package:auto_scroll/auto_scroll.dart';

///////// Stateful Widget With SearchBar and ListView //////////////////////////
// gecko card and endpoint -----------------------------------------------------

class GeckoRoute extends StatefulWidget {
  const GeckoRoute({super.key});

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
        actions: [
          IconButton(
              onPressed: () {
                openDialog();
              },
              icon: const Icon(Icons.info_rounded))
        ],
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

  Future openDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: null,
            content: const SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                      style: TextStyle(fontSize: 25),
                      "සූනෙකු ඇඟට වැටීම කිසියම් සුබ හෝ අසුබ දෙයක පෙරනිමිත්තක් ලෙස පුරාතනයේ පටන් අදටත් ලෝකවාසී බොහෝ ජන සමාජයන්අතර විස්වාසයක් පවතී. \n "),
                  Text(
                      style: TextStyle(fontSize: 25),
                      "හූනා පමණක් නොව කටුස්සාද ඇඟට වැටීම් සිදුවන අවස්තා ස්තාන අනුව පලාඵල කියැවේ. සූනෙකු ඇඟට වැටීමේදී එයි ඵල විපාකයන්, එම සිදුවීම සිදුවන විට උදාවී පැවති ලග්නය, දිනට යෙදී ඇති නැකත සහ තිථිය අනුව මෙන්ම දිශාව අනුවද වෙනසකට ලක්වේ.\n"),
                  Text(
                      style: TextStyle(fontSize: 25),
                      "සූනෙකු ඇඟට වැටීම සිදුවන්නේ සටවක, අටවක, දොළොස්‌වක, රිට්‌ටා පෝය තිථි යෙදී ඇති දිනක නම්, එම තිථි යෙදී ඇත්තේ ඉරිදා, අඟහරුවාදා, සෙනසුරාදා යන දිනයක නම් එදිනට උදාවී ඇත්තේ බෙරණ කැති, මුවසිරස, අද, අස්‌ලිය, මා, විසා, දෙට මුල, සුවන, පුවපුටුප, උත්‍රපුටුප යන නැකැත්වලින් එකක් නම්, එම මොහොත වනවිට උදාවී පවතින තත්කාල ලග්නය වෘෂභ, මිථුන, කටක, කන්‍යා, කුම්භ, මීන යන ලග්නවලින් එකක් නම් සූනන් ඇගට වැටීමෙන් කියවෙන අසුබ පලාඵලයන් ක්‍රියාත්මක වීමේ වැඩි අවස්තාවක් යෙදේ.\n"),
                  Text(
                      style: TextStyle(fontSize: 25),
                      "ඉහත සදහන් දින, තිථි, නැකැත් සහ ලග්න වෙනත් ඒකකක් වූවේ නම් ප්‍රතිඵල නිෂ්ක්‍රිය වී සුබ යැයි කියවෙන ප්‍රථිපල ක්‍රියාත්මක වීමටත් වැඩි අවස්තාවක් පවතී.\n"),
                  Text(
                    "ඉහත දැක්වෙන්නේ ඒ ආකාරයෙන් සූනන් හෝ කටුස්සන් ශරීරයේ ඒ ඒ ස්තානයට වැටීමෙන් ඇති වන සුබ සහ අසුබ ප්‍රතිඵලයන් වේ.\n",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.close))
            ],
          ));
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
