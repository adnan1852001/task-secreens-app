import 'package:egypt_store/modules/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../layout/cubit/cubit.dart';
import '../animation/fade_animation.dart';
import '../components/componts/textFeild.dart';
import '../network/remote/final_navigator.dart';
import '../styles/colors.dart';
import 'card_circular.dart';

Future signUp (context){
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var repasswordController = TextEditingController();
  return showMaterialModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) => SingleChildScrollView(
      controller: ModalScrollController.of(context),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.circular(30),
            ),
            height:  MediaQuery.of(context).size.height - 70,
            child: Column(
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 80,
                  height: 3,
                  decoration: BoxDecoration(
                    color: darkGreyColor,
                    borderRadius: BorderRadius.circular(25),

                ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                FadeAnimation(1.6,  Image.asset(
                  'images/system-outline-8-account.gif',
                  height: 150,
                  width: 150,
                  color: basicColor,
                ),),
                const SizedBox(
                  height: 5.0,
                ),
                FadeAnimation(2.2,  Text(
                  'تسجيل دخول ',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: secondaryColor,
                  ),
                ),),

                const SizedBox(
                  height: 20.0,
                ),
                FadeAnimation(2.6,
                  textFormFeild(
                    InputAction: TextInputAction.done,
                    obscureText: true,
                    type: TextInputType.visiblePassword,
                    controller: emailController,
                    labelText: ' البريد الالكتروني ',
                    icon: Icons.lock_rounded,
                    onTap: () {},
                    validator: ' الرجاء ادخال البريد الالكتروني  ',
                  ),),
               FadeAnimation(3.2,
                 textFormFeild(
                 InputAction: TextInputAction.done,
                 obscureText: true,
                 type: TextInputType.visiblePassword,
                 controller: phoneController,
                 labelText: 'رقم الهاتف',
                 icon: Icons.lock_rounded,
                 onTap: () {},
                 validator: ' الرجاء ادخال رقم الهاتف  ',
               ),),
                FadeAnimation(3.8,
                  textFormFeild(
                    InputAction: TextInputAction.done,
                    obscureText: true,
                    type: TextInputType.visiblePassword,
                    controller: passwordController,
                    labelText: ' كلمة السر ',
                    icon: Icons.lock_rounded,
                    onTap: () {},
                    validator: ' الرجاء ادخال كلمة السر  ',
                  ),
                ),
             FadeAnimation(4.2,
               textFormFeild(
               InputAction: TextInputAction.done,
               obscureText: true,
               type: TextInputType.visiblePassword,
               controller: repasswordController,
               labelText: ' اعادة كلمة السر ',
               icon: Icons.lock_rounded,
               onTap: () {},
               validator: ' الرجاء ادخال اعادة كلمة السر  ',
             ),),

                const SizedBox(
                  height: 40.0,
                ),
                FadeAnimation(4.6,
                  buttom(
                    text: 'تسجيل',
                    colorBtn: secondaryColor,
                    onPressed: (){},
                    width:350,

                  ),),

                const SizedBox(
                  height: 20.0,
                ),
                FadeAnimation(5,

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('هل لديك حساب ؟ ',
                        style: TextStyle(
                          color: basicColor,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          PushAndRemove(context,nextScreen:const LoginScreen() );
                        },
                        child: const Text('تسجيل دخول ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),),






              ],
            ),
          ),
        ),
      ),
    ),
  );
}
