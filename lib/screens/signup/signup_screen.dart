import 'package:e_commere/appColors/app_colors.dart';
import 'package:e_commere/screens/loginScreen/login_screen.dart';
import 'package:e_commere/styles/signup_screen_styles.dart';
import 'package:e_commere/svgimages/svg_images.dart';
import 'package:e_commere/widgets/mybutton_widget.dart';
import 'package:e_commere/widgets/textfromfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../routes/routes.dart';

class SignUpScreen extends StatelessWidget {
  Widget buildTopPart() {
    return Column(
      children: [
        Image.asset(
          'images/Logo.png',
          height: 150,
        ),
        MyTextFromField('Full Name', false),
        MyTextFromField('Email', false),
        MyTextFromField('Password', true),
        MyTextFromField('Confirm Password', true),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: MyButtonWidget(
              'Create an account', AppColors.baseDarkPinkColor, () {}),
        ),
        SizedBox(
          height: 20,
        ),
        RichText(
          text: TextSpan(
              text: 'By signing up you agrees to our\n\t',
              style: SignUpScreenStyles.SignUpAgresStyles,
              children: [
                TextSpan(
                    text: 'Terms', style: SignUpScreenStyles.termTextStyles),
                TextSpan(
                    text: ' and\t', style: SignUpScreenStyles.andTextStylies),
                TextSpan(
                    text: ' Conditions of Use',
                    style: SignUpScreenStyles.conditionOfUseStylies),
              ]),
        ),
      ],
    );
  }

  Widget buildSocialButton(Widget child, Function onPressed) {
    return MaterialButton(
      onPressed: () {
        onPressed;
      },
      shape: OutlineInputBorder(
        borderSide: BorderSide(
          width: 0.5,
          color: AppColors.baseGrey40Color,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: child,
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
            style: SignUpScreenStyles.signInSocialStylies,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //facebook social button
                buildSocialButton(
                  SvgPicture.asset(
                    SvgImages.facebook,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                  () {},
                ),
                //google social button
                buildSocialButton(
                  SvgPicture.asset(
                    SvgImages.google,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                  () {},
                ),
                //twitter social button
                buildSocialButton(
                  SvgPicture.asset(
                    SvgImages.twitter,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                  () {},
                ),
                // MaterialButton(
                //     shape: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         width: 0.5,
                //         color: AppColors.baseGrey40Color,
                //       ),
                //       borderRadius: BorderRadius.circular(5),
                //     ),
                //     child: SvgPicture.asset(SvgImages.facebook
                // color:AppColors.baseBlackColor,
                // width:45,
                // ),
                //     onPressed: () {})
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            child: MaterialButton(
              onPressed: () {
                PageRouting.goToNextPage(
                  context,
                  LoginScreen(),
                );
              },
              color: AppColors.baseGrey40Color,
              height: 55,
              elevation: 0,
              child: Center(
                  child: Text(
                'Sign Up',
                style: SignUpScreenStyles.signUpButtonTextStylies,
              )),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
          child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          buildTopPart(),
          buildBottomPart(context),
        ],
      )),
    );
  }
}
