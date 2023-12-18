import 'package:e_commere/appColors/app_colors.dart';
import 'package:e_commere/screens/homePage/home_page.dart';
import 'package:e_commere/screens/signup/signup_screen.dart';
import 'package:e_commere/styles/login_screen_styles.dart';
import 'package:e_commere/svgimages/svg_images.dart';
import 'package:e_commere/widgets/mybutton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../routes/routes.dart';
import '../../widgets/textfromfield_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget buildTopPart(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'images/Logo.png',
          height: 150,
        ),
        Column(
          children: [
            MyTextFromField(
              'E-mail',
              false,
            ),
            MyTextFromField(
              'Password',
              true,
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: MyButtonWidget('Sign in', AppColors.baseBlackColor, () {
                  PageRouting.goToNextPage(
                    context,
                    HomePage(),
                  );
                }),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: MyButtonWidget(
                'Sign Up  ',
                AppColors.baseDarkPinkColor,
                () {
                  PageRouting.goToNextPage(
                    context,
                    SignUpScreen(),
                  );
                },
              )),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Forget Password?',
          style: LoginInScreenStyles.forgetPasswordStyles,
        )
      ],
    );
  }

  Widget buildBottomPart(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'or sign in with social networks',
            style: LoginInScreenStyles.signInSocialStyles,
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0.5,
                        color: AppColors.baseGrey40Color,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {},
                  child: SvgPicture.asset(
                    SvgImages.facebook,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),
                MaterialButton(
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0.5,
                        color: AppColors.baseGrey40Color,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {},
                  child: SvgPicture.asset(
                    SvgImages.google,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),
                MaterialButton(
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0.5,
                        color: AppColors.baseGrey40Color,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {},
                  child: SvgPicture.asset(
                    SvgImages.twitter,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: MaterialButton(
              color: AppColors.baseGrey10Color,
              height: 55,
              elevation: 0,
              shape: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  "Sign up",
                  style: LoginInScreenStyles.signupButtonTextStylies,
                ),
              ),
              onPressed: () {
                PageRouting.goToNextPage(
                  context,
                  SignUpScreen(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildTopPart(context),
                buildBottomPart(context),
              ],
            )
          ],
        ),
      )),
    );
  }
}
