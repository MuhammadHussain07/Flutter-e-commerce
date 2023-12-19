import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commere/appColors/app_colors.dart';
import 'package:e_commere/data/home_page_data.dart';
import 'package:e_commere/detailScreen/detail_screen.dart';
import 'package:e_commere/routes/routes.dart';
import 'package:e_commere/screens/tab_bar_data.dart';
import 'package:e_commere/styles/home_screen_styles.dart';
import 'package:e_commere/svgimages/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/single_prod_widget.dart';
import '../../widgets/show_all.dart';

class HomePage extends StatelessWidget {
  AppBar buildAppBar() {
    return AppBar(
      bottom: TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 22),
        indicator: BoxDecoration(
          color: Colors.transparent,
        ),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelColor: AppColors.baseBlackColor,
        labelColor: AppColors.baseDarkPinkColor,
        tabs: [
          Text('All'),
          Text('Clothing'),
          Text(
            'Shoes',
          ),
          Text('Accessories')
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      title: Column(
        children: [
          Text(
            'Welcome',
            style: HomeScreenStyles.apppBarUpperTitleStyle,
          ),
          Text(
            'Shopping',
            style: HomeScreenStyles.apppBarottomTitleStyle,
          )
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: RotationTransition(
              turns: AlwaysStoppedAnimation(90 / 360),
              child: SvgPicture.asset(
                SvgImages.filter,
                color: AppColors.baseBlackColor,
                width: 30,
              ),
            )),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              SvgImages.search,
              color: AppColors.baseBlackColor,
              width: 30,
            ))
      ],
    );
  }

  Widget buildAdvertisementPlace() {
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Container(
          // color: Colors.blue,
          height: 170,
          child: CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.creatopy.com/blog/wp-content/uploads/2018/05/advertisement-ideas-inspiration-advertising.png"),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://www.creatopy.com/blog/wp-content/uploads/2019/03/creative-advertising-and-pop-culture-pop-culture-ads.png",
                      ),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://dge4uaysoh8oy.cloudfront.net/resize/banners/bc3wky2qj/medium-large"),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ],
              options: CarouselOptions(
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 1000),
              ))),
    );
  }

  Widget buildTrendingProduct(String productImage, String productName,
      String productModel, double productPrice) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: 30,
        right: 20,
        bottom: 20,
      ),
      height: 70,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Material(
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Image.network(productImage),
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      style: HomeScreenStyles.trendingProductNameStyle,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      productModel,
                      style: HomeScreenStyles.trendingProductModelStyle,
                    ),
                  ],
                ),
              )),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: MaterialButton(
              color: AppColors.baseLightPinkColor,
              onPressed: () {},
              elevation: 0,
              height: 45,
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(0.7),
              ),
              child: Text(
                '\$ $productPrice',
                style: HomeScreenStyles.trendingProductPriceStyle,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: buildAppBar(),
          body: TabBarView(
            children: [
              ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  buildAdvertisementPlace(),
                  ShowAllText('New Arrival'),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: GridView.builder(
                        shrinkWrap: true,
                        primary: true,
                        itemCount: singleProductData.length,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, childAspectRatio: 0.7),
                        itemBuilder: (context, index) {
                          var data = singleProductData[index];
                          return SingleProdWidget(
                              data.productModel,
                              data.productImage,
                              data.productName,
                              data.productPrice,
                              data.productOldPrice, () {
                            PageRouting.goToNextPage(
                                context, DetailScreen(data));
                          });
                        }),
                  ),
                  Divider(
                    indent: 16,
                    endIndent: 16,
                  ),
                  ShowAllText('What\'s trending'),
                  buildTrendingProduct(
                    'https://reebok.bynder.com/transform/7509005a-2468-4651-8171-b680e91c16c8/100070824_F_Model_eCom-tif?io=transform:fit,width:700&quality=100',
                    'Tank-tops',
                    'Classics mesh tank top',
                    15,
                  ),
                  buildTrendingProduct(
                    'https://reebok.bynder.com/transform/8c0112bc-ca93-4346-819a-f9a1c3249d67/100057289_F_Model_eCom-tif?io=transform:fit,width:700&quality=100',
                    'Mélange Shorts',
                    'Workout Ready Mélange Shorts',
                    23,
                  ),
                  buildTrendingProduct(
                    'https://reebok.bynder.com/transform/2e0ae724-6ea0-487e-8dd5-4dfa8077f670/100030560_F_Model_eCom-tif?io=transform:fit,width:700&quality=100',
                    'Hoodie',
                    'Classics Brand Proud Hoodie',
                    54.97,
                  ),
                  ShowAllText('History'),
                  Container(
                    height: 240,
                    child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        primary: true,
                        itemCount: singleProductData.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1, childAspectRatio: 1.5),
                        itemBuilder: (context, index) {
                          var data = singleProductData[index];

                          return SingleProdWidget(
                            data.productModel,
                            data.productImage,
                            data.productName,
                            data.productPrice,
                            data.productOldPrice,
                            () {},
                          );
                        }),
                  )
                ],
              ),
              // Center(child: Text('1Page')),
              TabBars(clothsData),
              TabBars(shoesData),
              // Center(child: Text('3Page')),
              TabBars(accessoriesData),
              // Center(child: Text('4Page')),
            ],
          )),
    );
  }
}
