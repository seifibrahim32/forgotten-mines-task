import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});

  final List<String> categories = ['Games', 'Products', 'Who we are'];
  final List<String> categoriesDetails = ['We have some games such as MOBA , Super Mario',
    'We have some items for share for our new products. Stay tuned..',
    'Forgotten Mines are one of US established company where we produce new electronic grames to '
        'satisfy our customers loyalty'];
  final List<List<String>> categoriesItems = [['Mario','MOBA'], ['Products'], ['Facebook']];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
          height: 40,
          width: double.infinity,
          color: Colors.green,
          child: Text(' Welcome to Forgotten Mines',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white))),
      SizedBox(height: 30),
      ListView.separated(
        itemCount: categories.length,
        shrinkWrap: true,
        separatorBuilder: (ctx, index) {
          return SizedBox(height: 30);
        },
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () async {
              await Navigator.pushNamed(context, 'items_screen',
                  arguments: {
                'items':categoriesItems[index],
                'item-details':categoriesDetails[index],
                'item': categories[index]});
            },
            child: Container(
              width: 10,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white60,
                  boxShadow: [BoxShadow(color: Colors.black45)],
                  borderRadius: BorderRadius.circular(14)),
              child: Text(categories[index],
                  style: TextStyle(color: Colors.white)),
            ),
          );
        },
      )
    ]));
  }
}
