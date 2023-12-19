import 'package:e_commere/appColors/app_colors.dart';
import 'package:e_commere/data/detail_screen_data.dart';
// import 'package:e_commere/data/home_page_data.dart';
import 'package:e_commere/styles/detail_screen_styles.dart';
import 'package:e_commere/svgimages/svg_images.dart';
import 'package:e_commere/widgets/drop_button_widget.dart';
// import 'package:e_commere/widgets/show_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/single_prod_widget.dart';
import '../models/single_product_model.dart';
import '../routes/routes.dart';

class DetailScreen extends StatefulWidget {
  //  DetailScreen({super.key});
  final SingleProductModel data;

  const DetailScreen(this.data);
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  dynamic _ratingController;

  dynamic _sizeController;

  PreferredSize buildAppbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Reebok',
          style: TextStyle(
            color: AppColors.baseBlackColor,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                SvgImages.heart,
                color: AppColors.baseBlackColor,
                width: 35,
                semanticsLabel: 'Fave',
              )),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                SvgImages.upload,
                color: AppColors.baseBlackColor,
                width: 35,
                semanticsLabel: 'Fave',
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('images/Logo.png'),
              backgroundColor: Colors.transparent,
            ),
            title:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                widget.data.productName,
                style: DetailScreenStyles.companyTitleStyle,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.data.productModel,
                style: DetailScreenStyles.productModelStyle,
              )
            ]),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.productPrice.toString(),
                  style: DetailScreenStyles.productPriceStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.data.productPrice.toString(),
                  style: DetailScreenStyles.productOldPriceStyle,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    widget.data.productImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(right: 15, top: 15),
                      child: Image.network(widget.data.productSecondImage),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(right: 15, top: 15),
                      child: Image.network(widget.data.productThirdImage),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(right: 15, top: 15),
                      child: Image.network(widget.data.productFourImage),
                    )),
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: DropButton('Color', _ratingController,
                      ['red', 'blue', 'white', 'black', 'pink'])),
              Expanded(
                  child: DropButton(
                      'Size', _sizeController, ['25', '30', '35', '40', '45']))
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: MaterialButton(
              onPressed: () {},
              elevation: 0,
              height: 50,
              color: AppColors.baseDarkGreenColor,
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'Add to Cart',
                style: DetailScreenStyles.buttonTextStyle,
              ),
            ),
          ),
          ExpansionTile(
            title: Text(
              'Description',
              style: DetailScreenStyles.discriptionTextStyle,
            ),
            children: [
              ListTile(
                title: Wrap(
                  children: [
                    Text(
                      'this woman\'s tank top is design to help you stay cool. It"s made of stretchy and breathable fabric that moves heat away from your skin.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\t\tMaterial',
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                            Text(
                              '84%\tNylon',
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '16%\telastance',
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\t\tSize',
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                            Text(
                              '2XS, \tXS, \tS, \tM, \tL',
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\t\tGender',
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                            Text(
                              'Woman',
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\t\tProvince',
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                            Text(
                              'Balochistan',
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\t\tCountry',
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                            Text(
                              'Pakistan',
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          height: 55,
                          elevation: 0,
                          child: Text(
                            'Size guide',
                            style: DetailScreenStyles.sizeGuideTextStyle,
                          ),
                          minWidth: double.infinity,
                          color: AppColors.baseWhiteColor,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          ListTile(
            leading: Text('You may also like',
                style: DetailScreenStyles.youMayAlsoLikeTextStyle),
            trailing:
                Text('Show All', style: DetailScreenStyles.showAllTextStyle),
          ),
          Container(
            height: 240,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                primary: true,
                itemCount: detailScreenData.length,
                // physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, childAspectRatio: 1.5),
                itemBuilder: (context, index) {
                  var data = detailScreenData[index];
                  return SingleProdWidget(
                      data.productModel,
                      data.productImage,
                      data.productName,
                      data.productPrice,
                      data.productOldPrice, () {
                    PageRouting.goToNextPage(context, DetailScreen(data));
                  });
                }),
          ),
        ],
      ),
    );
  }
}
