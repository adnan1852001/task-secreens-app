// ignore_for_file: non_constant_identifier_names

import 'package:egypt_store/shared/styles/colors.dart';
import 'package:flutter/material.dart';

Widget textFormFeild({
  required TextEditingController controller,
  required String labelText,
  String? validator,
  Function(dynamic)? onSubmit,
  IconData? icon,
  IconData? icon2,
  Function()? onTap,
  TextInputType? type,
  bool obscureText = false,
  bool phone = false,
  TextInputAction? InputAction,
  Widget? prefix,
}) =>
    Card(
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: SizedBox(
        width: 350.0,
        height: 48.0,
        child: TextFormField(
          textInputAction: InputAction,
          obscureText: obscureText,
          keyboardType: type,
          onTap: onTap,
          onFieldSubmitted: onSubmit,
          controller: controller,
          validator: (value) {
            if (value!.isEmpty) {
              return validator;
            }
          },
          readOnly: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: const BorderSide(
                color: Colors.black,
                width: 1.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide:  BorderSide(
                color: basicColor,
                width: 1.5,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:  const BorderSide(
                color: endColor,
              ),
              borderRadius: BorderRadius.circular(50.0),
            ),
            prefixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: 36.0,
                    height: 36.0,
                    decoration:  BoxDecoration(
                      color: secondaryColor, // border color
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                ),
                phone == true
                    ? Row(
                        children: [
                          Image.asset(
                            'images/kuwait.png',
                            height: 20,
                            width: 26,
                          ),
                          const SizedBox(
                            width: 7.7,
                          ),
                          Text(
                            '965  -',
                            style: TextStyle(
                                color: Color(0xff696969),
                                fontWeight: FontWeight.bold,
                                fontSize: 13.0),
                          )
                        ],
                      )
                    : Text(''),
              ],
            ),
            hintText: labelText,
            hintStyle: const TextStyle(
              fontSize: 13.0,
            ),
          ),
          cursorColor: Colors.black,
        ),
      ),
    );

Widget buttom({
  required String text,
  required Color colorBtn,
  required Function() onPressed,
  double raduis = 39,
  double width = 303.0,
  double height = 48.0,
  double fontSizetext = 16,
}) =>
    Container(
      width: width,
      height: height,

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorBtn,
          textStyle: const TextStyle(fontSize: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(raduis),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontSize: fontSizetext,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
