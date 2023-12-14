import 'package:e_commere/models/single_prod_widget.dart';
import 'package:flutter/material.dart';

import '../data/home_page_data.dart';

class TabBars extends StatelessWidget {
  const TabBars({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        primary: true,
        itemCount: clothsData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.7),
        itemBuilder: (context, index) {
          var data = clothsData[index];

          return SingleProdWidget(
            data.productModel,
            data.productImage,
            data.productName,
            data.productPrice,
            data.productOldPrice,
            () {},
          );
        });
  }
}
