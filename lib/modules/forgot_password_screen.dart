import 'package:egypt_store/modules/login_screen.dart';
import 'package:flutter/material.dart';

import '../shared/animation/fade_animation.dart';
import '../shared/components/componts/textFeild.dart';
import '../shared/network/remote/back_navigator.dart';
import '../shared/styles/colors.dart';

class ForgotPasswordScreen extends PageRouteBuilder {
  ForgotPasswordScreen()
      : super(
    transitionsBuilder: (context, animation, animationtwo, child) {
      return ScaleTransition(
        scale: Tween(begin: 0.0,end:1.0 ,).animate(CurvedAnimation(parent: animation, curve: Curves.fastLinearToSlowEaseIn)),
        child: child,

      );
    },
    pageBuilder: (context, animation, animationtwo) {
      var emailController = TextEditingController();

      return   Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
           body: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children:  [
               const SizedBox(height: 150),
               FadeAnimation(1.6,
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: const [

                     Text(''
                         'نسيت كلمة المرور؟',
                       style: TextStyle(
                           fontSize: 23.0,
                           fontWeight: FontWeight.bold

                       ),
                     ),
                   ],
                 ),
               ),

               const SizedBox(height: 8.0,),
               FadeAnimation(2, Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:  [

                   Text(''
                       ' قم بإضافة بريدك الالكتروني لتصلك رسالة',
                     style: TextStyle(
                         color: darkGreyColor,
                         fontSize: 12.0,
                         fontWeight: FontWeight.bold


                     ),
                   ),
                 ],
               ),),

               const SizedBox(height: 8.0,),
               FadeAnimation(2.4, Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:  [

                   Text(''
                       ' بكلمة المرور الجديدة',
                     style: TextStyle(
                         color: darkGreyColor,
                         fontSize: 12.0,
                         fontWeight: FontWeight.bold

                     ),
                   ),
                 ],
               ),),

               const SizedBox(height: 38.7,),
                 FadeAnimation(2.8,
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

               const SizedBox(height: 60.7,),
               FadeAnimation(3.2,
                   buttom(
                       text: 'إرسال',
                       colorBtn: secondaryColor,
                       onPressed:(){
                         BackNavigator(context,nextScreen: LoginScreen());
                       } ,
                       width: 350
                   )
               ),


             ],
           ),
        ),
      );
    }

  );
}
