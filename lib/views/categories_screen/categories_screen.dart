import 'package:flutter/material.dart';

import '../../domain/categories_model.dart';

class CategoriesScreen extends StatelessWidget {

  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CategoriesModel categoriesModel = CategoriesModel();
    return Scaffold(
        body: Column(children: [
      Container(
          height: 40,
          width: double.infinity,
          color: Colors.green,
          child: const Text('Welcome to Forgotten Mines',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white))
      ),
      const SizedBox(height: 30),
      ListView.separated(
        itemCount: categoriesModel.categoriesLength(),
        shrinkWrap: true,
        separatorBuilder: (ctx, index) {
          return const SizedBox(height: 30);
        },
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () async {
              await Navigator.pushNamed(context, 'items_screen',
                  arguments: {
                'items': categoriesModel.getCategoriesItem(index),
                'item-details': categoriesModel.getCategoryDetails(index),
                'categoryName': categoriesModel.getCategoriesName(index)});
            },
            child: Container(
              width: 10,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white60,
                  boxShadow: const [BoxShadow(color: Colors.black45)],
                  borderRadius: BorderRadius.circular(14)),
              child: Text(categoriesModel.getCategoriesName(index),
                  style: const TextStyle(color: Colors.white)),
            ),
          );
        },
      )
    ]));
  }
}
