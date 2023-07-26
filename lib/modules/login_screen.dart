import 'package:flutter/material.dart';

import '../layout/local_auth_service/local_auth_service.dart';
import '../shared/animation/fade_animation.dart';
import '../shared/components/componts/textFeild.dart';
import '../shared/styles/colors.dart';
import '../shared/widget/card_circular.dart';
import '../shared/widget/sign_up.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    bool authenticated =false;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: greyColor,

        body: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
              children: [
            Stack(
              children: [
                Column(
                  children: [
                    FadeAnimation (
                      1.6,
                      Container(
                        width: double.infinity,
                        height: 370,
                        decoration: const BoxDecoration(
                          gradient: gradient,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                          ),
                        ),
                      ),
                    )

                  ],
                ),
                FadeAnimation(2,Padding(
                  padding: const EdgeInsets.only(
                    top: 250,
                    right: 15,
                    left: 15,
                  ),
                  child: Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      height: 350,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(15),

                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 40.0,
                            ),
                            FadeAnimation(2.2,
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
                            FadeAnimation(2.4,
                              textFormFeild(
                                InputAction: TextInputAction.done,
                                obscureText: true,
                                type: TextInputType.visiblePassword,
                                controller: passwordController,
                                labelText: ' كلمة المرور ',
                                icon: Icons.lock_rounded,
                                onTap: () {},
                                validator: ' الرجاء ادخال كلمة المرور ',
                              ),),
                            const SizedBox(
                              height: 10.0,
                            ),
                            FadeAnimation(2.6,
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    ForgotPasswordScreen(),
                                  );
                                },
                                child: Text(
                                  'هل نسيت كلمة المرور؟',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color: darkGreyColor
                                  ),
                                ),

                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            FadeAnimation(2.8,
                              buttom(
                                onPressed: (){},
                                text: 'تسجيل دخول',
                                colorBtn: basicColor,
                                width: double.infinity,
                              ),),
                            const SizedBox(
                              height: 10.0,
                            ),
                            FadeAnimation(3,

                              buttom(
                                onPressed: (){
                                  signUp(context);
                                },
                                text: 'تسجيل جديد',
                                colorBtn: secondaryColor,
                                width: double.infinity,
                              ),),


                          ],
                        ),
                      ),
                    ),
                  ),
                ),)
              ],
            ),
            Column(
              children: [
                FadeAnimation(3.2,Padding(
                  padding: const EdgeInsets.only(top: 220),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Container(
                      width: 150,
                      height: 60,
                      decoration:BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            width: 3,
                            color: basicColor

                        ),
                        borderRadius: BorderRadius.circular(8),

                      ) ,
                      child: Center(
                        child: Text(
                          'تسجيل دخول',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: secondaryColor,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),),
                SizedBox(height: 280),
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FadeAnimation(3.4,  cardCircular(nameImage: 'gmail'),),
                    FadeAnimation(3.6, cardCircular(nameImage: 'facebook (1)',size: 55),),
                    FadeAnimation(3.8, cardCircular(nameImage: 'instagram (2)',size: 80),),


                  ],
                ),
                const SizedBox(height: 30),
                FadeAnimation(3.4,
                  InkWell(
                  borderRadius: BorderRadius.all(Radius.circular(50)),

                  onTap: () async {
                    final authenticate= await LocalAuth.authenticate();
                    setState(() {
                      authenticated=authenticate;
                    });

                  },
                  child: Icon(
                    Icons.fingerprint_sharp,
                    size: 70,
                    color: darkGreyColor,
                  ),
                ),),


              ],
            ),
          ]),
        ),
      ),
    );
  }
}
