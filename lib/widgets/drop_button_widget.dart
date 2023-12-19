import 'package:e_commere/appColors/app_colors.dart';
import 'package:e_commere/styles/detail_screen_styles.dart';
import 'package:flutter/material.dart';

class DropButton extends StatefulWidget {
  final String hintText;
  late final ratingController;
  final List<String> item;
  DropButton(this.hintText, this.ratingController, this.item);
  @override
  State<DropButton> createState() => _DropButtonState();
}

class _DropButtonState extends State<DropButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
              fillColor: AppColors.baseWhiteColor,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none)),
          hint: Text(
            '${widget.hintText}',
            style: DetailScreenStyles.productDropDownValueStyle,
          ),
          value: widget.ratingController,
          items: widget.item
              .map((e) => DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              widget.ratingController = value!;
            });
          }),
    );
  }
}
