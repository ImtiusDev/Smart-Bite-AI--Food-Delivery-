// use from figma : just pick these only, from *heading/H4, *heading/H5, and *body/medium, *body/large
import 'package:flutter/material.dart';

class AppTextSyle {
  // Heading 4
  static TextStyle heading4Regular(Color? selectColor) => TextStyle(
    height: 1.25,
    color: selectColor ?? Colors.black,
    fontSize: 32,
    fontWeight: FontWeight.w400,  // w600 means semibold
  );

  static TextStyle heading4Medium(Color? selectColor) => TextStyle(
    height: 1.25,
    color: selectColor ?? Colors.black,
    fontSize: 32,
    fontWeight: FontWeight.w500,  // w600 means semibold
  );

  static TextStyle heading4SemiBold(Color? selectColor) => TextStyle(
    height: 1.25,
    color: selectColor ?? Colors.black,
    fontSize: 32,
    fontWeight: FontWeight.w600,  // w600 means semibold
  );

  static TextStyle heading4Bold(Color? selectColor) => TextStyle(
    height: 1.25,
    color: selectColor ?? Colors.black,
    fontSize: 32,
    fontWeight: FontWeight.w700,  // w600 means semibold
  );


  // Heading 5
  static TextStyle heading5Regular(Color? selectColor) => TextStyle(
    height: 1.3,
    color: selectColor ?? Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w400,  // w600 means semibold
  );

  static TextStyle heading5Medium(Color? selectColor) => TextStyle(
    height: 1.3,
    color: selectColor ?? Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w400,  // w600 means semibold
  );

  static TextStyle heading5SemiBold(Color? selectColor) => TextStyle(
    height: 1.3,
    color: selectColor ?? Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w400,  // w600 means semibold
  );

  static TextStyle heading5Bold(Color? selectColor) => TextStyle(
    height: 1.3,
    color: selectColor ?? Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w400,  // w600 means semibold
  );





  //body
  //body small
   static TextStyle bodySmallRegular(Color? selectColor) => TextStyle(
    color: selectColor ?? Colors.black,
    fontSize: 12,
    height: 1.3,
    fontWeight: FontWeight.w400,
  );
  static TextStyle bodySmallMedium(Color? selectColor) => TextStyle(
    color: selectColor ?? Colors.black,
    fontSize: 12,
    height: 1.3,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bodySmallSemiBold(Color? selectColor) => TextStyle(
    color: selectColor ?? Colors.black,
    fontSize: 12,
    height: 1.3,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bodySmallBold(Color? selectColor) => TextStyle(
    color: selectColor ?? Colors.black,
    fontSize: 12,
    height: 1.3,
    fontWeight: FontWeight.w700,
  );




  // body Medium
   static TextStyle bodyMediumRegular(Color? selectColor) => TextStyle(
    color: selectColor ?? Colors.black,
    fontSize: 14,
    height: 1.42,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodyMediumMedium(Color? selectColor) => TextStyle(
    color: selectColor ?? Colors.black,
    fontSize: 14,
    height: 1.42,
    fontWeight: FontWeight.w500,

  );

  static TextStyle bodyMediumSemiBold(Color? selectColor) => TextStyle(
    color: selectColor ?? Colors.black,
    fontSize: 14,
    height: 1.42,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bodyMediumBold(Color? selectColor) => TextStyle(
    color: selectColor ?? Colors.black,
    fontSize: 14,
    height: 1.42,
    fontWeight: FontWeight.w700,
  );



  //body large
  static TextStyle bodyLargeRegular(Color? selectColor) => TextStyle(
    color: selectColor ?? Colors.black,
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodyLargeMedium(Color? selectColor) => TextStyle(
    color: selectColor ?? Colors.black,
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bodyLargeSemiBold(Color? selectColor) => TextStyle(
    color: selectColor ?? Colors.black,
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bodyLargeBold(Color? selectColor) => TextStyle(
    color: selectColor ?? Colors.black,
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w700,
  );
}





