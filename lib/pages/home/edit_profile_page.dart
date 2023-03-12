import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    
  
  Widget nameInput(){
    return Container(
      margin: EdgeInsets.only(
        top: 30
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nama',
            style: secondaryTextStyle.copyWith(
              fontSize: 13
            ),
          ),
          TextFormField(
            style: primaryTextStyle,
            decoration: InputDecoration(
              hintText: 'Mohamad Reza',
              hintStyle: blackTextStyle,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: subtitleColor
                )
              )
            ),
          )
        ],
      ),
    );
  }

  
  Widget usrnameInput(){
    return Container(
      margin: EdgeInsets.only(
        top: 30
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Username',
            style: secondaryTextStyle.copyWith(
              fontSize: 13
            ),
          ),
          TextFormField(
            style: primaryTextStyle,
            decoration: InputDecoration(
              hintText: '@ezazee',
              hintStyle: blackTextStyle,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: subtitleColor
                )
              )
            ),
          )
        ],
      ),
    );
  }


  Widget emailInput(){
    return Container(
      margin: EdgeInsets.only(
        top: 30
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email',
            style: secondaryTextStyle.copyWith(
              fontSize: 13
            ),
          ),
          TextFormField(
            style: primaryTextStyle,
            decoration: InputDecoration(
              hintText: 'example12@email.com',
              hintStyle: blackTextStyle,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: subtitleColor
                )
              )
            ),
          )
        ],
      ),
    );
  }

    Widget content(){
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(top: defaultMargin),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(
                  'assets/image_profile.png',
                ))
              ),
            ),
            nameInput(),
            usrnameInput(),
            emailInput()
          ],
        ),
      );
    }


    return Scaffold(
      backgroundColor: backgroundColor1,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context); 
            },
          ),
          backgroundColor: primaryColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Edit Profile',
          ),
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(
                Icons.check,
                color: primaryTextColor,
              )
            )
          ],
      ),
      body: content(), 
      resizeToAvoidBottomInset: false,
    );
  }
}