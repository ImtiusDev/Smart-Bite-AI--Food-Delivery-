import 'package:flutter/material.dart';
import 'package:smart_bite_ai/core/constants/colors.dart';
import 'package:smart_bite_ai/core/constants/typography_style.dart';

ElevatedButton buttonWithRadius(String buttonText, Size mediaSize,Function() onPressed)=> ElevatedButton(
  onPressed: onPressed,
  style: ButtonStyle(
    padding: WidgetStateProperty.all(EdgeInsets.all(10)),
    backgroundColor: WidgetStateProperty.all(AppColors.primary),
    // maximumSize: WidgetStateProperty.all(Size(480,55)),
    fixedSize: WidgetStateProperty.all(Size(mediaSize.width * 0.95,55)),
  ),

  child: Text(buttonText,
    style: AppTextSyle.bodyMediumSemiBold(AppColors.NeutralWhite20),
  ),
);