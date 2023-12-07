
import 'package:flutter/material.dart';

class ItemsScreen extends StatelessWidget{

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
              child: Text(
                  arguments['item'],
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white))
          ),
          Container(
            child: Text(
                textAlign: TextAlign.center,
                arguments['item-details'] as String)
          ),
          ListView.separated(
            itemCount: categories.length,
            shrinkWrap: true,
            separatorBuilder: (ctx, index) {
              return SizedBox(height: 30);
            },
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
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
        ],
      )
    );
  }

}
