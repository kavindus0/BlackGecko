import 'package:flutter/material.dart';
import 'package:blackgecko/SearchPage/crawSound.dart';
import 'package:searchable_listview/searchable_listview.dart';

class CrawSoundSearch extends StatefulWidget {
  const CrawSoundSearch({super.key});

  @override
  State<CrawSoundSearch> createState() => _CrawSoundSearchState();
}

class _CrawSoundSearchState extends State<CrawSoundSearch> {
  final List<CrawSound> _crawSounds = [
    const CrawSound(positionName: "positionName", Effect: "Effect"),
    const CrawSound(positionName: "positionName", Effect: "Effect"),
    const CrawSound(positionName: "positionName", Effect: "Effect"),
    const CrawSound(positionName: "positionName", Effect: "Effect"),
    const CrawSound(positionName: "positionName", Effect: "Effect"),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchableList<CrawSound>(
            initialList: _crawSounds,
            style: const TextStyle(fontSize: 25),
            builder: (List<CrawSound> list, int index, CrawSound item) =>
                CrawSoundItem(item: item),
            filter: (value) => _crawSounds
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

class CrawSoundItem extends StatelessWidget {
  final CrawSound item;
  const CrawSoundItem({
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
