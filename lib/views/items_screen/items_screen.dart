import 'package:flutter/material.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    List<String> categories = arguments['items'] as List<String>;
    return Scaffold(
        body: Column(
      children: [
        Container(
            height: 40,
            width: double.infinity,
            color: Colors.green,
            child: Text(arguments['categoryName'],
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white))
        ),
        Text(
            textAlign: TextAlign.center,
            arguments['item-details'] as String),
        ListView.separated(
          itemCount: categories.length,
          shrinkWrap: true,
          separatorBuilder: (ctx, index) {
            return const SizedBox(height: 30);
          },
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              child: Container(
                width: 10,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white60,
                    boxShadow: const [BoxShadow(color: Colors.black45)],
                    borderRadius: BorderRadius.circular(14)),
                child: Text(categories[index],
                    style: const TextStyle(color: Colors.white)),
              ),
            );
          },
        )
      ],
    ));
  }
}
