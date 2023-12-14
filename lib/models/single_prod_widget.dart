import 'package:e_commere/appColors/app_colors.dart';
import 'package:flutter/material.dart';

class SingleProdWidget extends StatelessWidget {
  final String productName;
  final String productImage;
  final String productModel;
  final double productPrice;
  final double productOldPrice;
  final Function onPressed;
  SingleProdWidget(
    this.productModel,
    this.productImage,
    this.productName,
    this.productPrice,
    this.productOldPrice,
    this.onPressed,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed(),
        child: Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.topRight,
                  decoration: BoxDecoration(
                    color: AppColors.baseGrey10Color,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(productImage),
                    ),
                  ),
                  child: IconButton(
                      onPressed: onPressed(),
                      icon: Icon(
                        Icons.favorite,
                        size: 30,
                        color: AppColors.baseDarkOrangeColor,
                      )),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      productModel,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: AppColors.baseDarkPinkColor),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$ $productPrice',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          '\$ $productOldPrice',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}
