import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/typography_style.dart';


TextField TextFieldWithBorder()=> TextField(
    style: AppTextSyle.bodyMediumMedium(AppColors.TextNeutral100),
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: AppColors.Neutralborder40,
          width: 1.0,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: AppColors.NeutralWhite50,
          width: 1.2,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
      ),
    ),
);












class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key});

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscureText,
      style: AppTextSyle.bodyMediumMedium(AppColors.TextNeutral100),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: AppColors.Neutralborder40,
            width: 1.0,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignCenter,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16),

        suffixIcon: AnimatedSwitcher(
          duration: Duration(milliseconds: 250),
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: ScaleTransition(scale: animation, child: child),
            );
          },
          child: IconButton(
            padding: EdgeInsets.only(right: 15),
            key: ValueKey(_obscureText),
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              color: AppColors.NeutralBlack100,
            ),
            onPressed: _toggleVisibility,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: AppColors.NeutralWhite50,
            width: 1.2,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignCenter,
          ),
        ),
      ),
    );
  }
}







