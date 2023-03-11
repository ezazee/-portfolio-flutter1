import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Daftar',
              style: primaryTextStyle.copyWith(
                color: blackColor,
                fontSize: 24,
                fontWeight: semiBold
              ),
            ),
            SizedBox(height: 2,),
            Text(
              'Daftar Dulu Sebelum Login',
              style: TextStyle(
                color: subtitleColor
              ),
              )
          ],
        ),
      );
    }


    Widget nameInput(){
      return Container(
        margin: EdgeInsets.only(top: 40,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Nama Lengkap',
                style: primaryTextStyle.copyWith(
                  color: blackColor,
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: backgroundColor2,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                            'assets/icon_name.png',
                            width: 17,
                          ),
                          SizedBox(
                            width: 16,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration.collapsed(
                              hintText: 'Masukan Nama Lengkap Kamu',
                              hintStyle: subtitleTextStyle
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
          ],
        ),
      );
    }


    Widget usernameInput(){
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Username',
                style: primaryTextStyle.copyWith(
                  color: blackColor,
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: backgroundColor2,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                            'assets/icon_username.png',
                            width: 17,
                          ),
                          SizedBox(
                            width: 16,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration.collapsed(
                              hintText: 'Masukan Username',
                              hintStyle: subtitleTextStyle
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
          ],
        ),
      );
    }


    Widget emailInput(){
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Email Address',
                style: primaryTextStyle.copyWith(
                  color: blackColor,
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: backgroundColor2,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                            'assets/icon_email.png',
                            width: 17,
                          ),
                          SizedBox(
                            width: 16,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration.collapsed(
                              hintText: 'Masukan Email Address',
                              hintStyle: subtitleTextStyle
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
          ],
        ),
      );
    }


    Widget passwordInput(){
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Password',
                style: primaryTextStyle.copyWith(
                  color: blackColor,
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: backgroundColor2,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                            'assets/icon_password.png',
                            width: 17,
                          ),
                          SizedBox(
                            width: 16,
                        ),
                        Expanded(
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration.collapsed(
                              hintText: 'Masukan Password',
                              hintStyle: subtitleTextStyle
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
          ],
        ),
      );
    }


    Widget signUpButton(){
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )
          ),
          child: Text(
            'Daftar',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium
            ),
          ),
        ),
      );
    }


    Widget footer(){
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sudah Punya Akun? ',
              style: subtitleTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Text(
                'Login',
                style: purpleTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium
                ),
              ),
            )
          ],
        ),
      );
    }



    return Scaffold(
      backgroundColor: backgroundColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              nameInput(),
              usernameInput(),
              emailInput(),
              passwordInput(),
              signUpButton(),
              Spacer(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}