import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';

class ProductPage extends StatefulWidget {

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List images = [
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
  ];

  List familiarShoes = [
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
  ];

  int currentIndex = 0;
  bool isWishList = false;

  @override
  Widget build(BuildContext context) {

    Future<void> showSuccessDialog() async{
      return showDialog(
        context: context,
        builder: (BuildContext context) => Container(
          width: MediaQuery.of(context).size.width - (2 * defaultMargin),
          child: AlertDialog(
            backgroundColor: backgroundColor3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: primaryTextColor,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/icon_success.png',
                    width: 100,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Hore! :)',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Barang Sudah Masuk Ke Keranjang',
                    style: secondaryTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 154,
                    height: 44,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        )
                      ),
                      child: Text(
                        'Lihat Keranjang',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }

    Widget indicator(int index){
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: EdgeInsets.symmetric(
          horizontal: 2
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? primaryColor : Colors.grey,
        ),
      );
    }

    Widget familiarShoesCard(String imageUrl){
      return Container(
        width: 54,
        height: 54,
        margin: EdgeInsets.only(
          right: 16,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
          borderRadius: BorderRadius.circular(6)
        ),
      );
    }

    Widget header(){

      int index = -1;

    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 20,
            left: defaultMargin,
            right: defaultMargin
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.chevron_left
                ),
              ),
              Icon(
                Icons.shopping_bag,
                color: blackColor,
              ),
            ],
          ),
        ),
        CarouselSlider(
        items: images.map((image) => Image.asset(
            image,
            width: MediaQuery.of(context).size.width,
            height: 310,
            fit: BoxFit.cover,
          )).toList(), 
        options: CarouselOptions(
          initialPage: 0,
          onPageChanged: (index, reason) {
            setState(() {
              currentIndex = index;
            });
          }
        ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images.map((e){
            index++;
            return indicator(index);
          }).toList(),
        )
      ],
    );
  }

    Widget content(){

      int index = -1;

      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 17,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
          color: Colors.black
        ),
        child: Column(
          children: [

            // ! NOTE: HEADER
            Container(
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sepatu Super',
                          style: primaryTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: semiBold
                          ),
                        ),
                        Text(
                          'Hiking',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isWishList = !isWishList;
                      });
                      
                      if(isWishList){
                        ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: secondaryColor,
                          content: Text(
                            'Produk Sudah Ditambahkan Ke Favorit',
                            textAlign: TextAlign.center,
                          )
                        )
                      );
                      } else{
                        ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: alertColor,
                          content: Text(
                            'Produk Sudah Dihapus Dari Favorit',
                            textAlign: TextAlign.center,
                          )
                        )
                      );
                      }
                      
                    },
                    child: Image.asset(
                      isWishList ? 'assets/button_wishlist_blue.png' : 'assets/button_wishlist.png',
                      width: 46,
                    ),
                  )
                ],
              ),
            ),

          // ! NOTE: PRICE
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin
            ),
            decoration: BoxDecoration(
              color: backgroundColor3,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Harga Mulai Dari',
                  style: primaryTextStyle,
                ),
                Text(
                  'Rp. 340.000',
                  style: priceTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold
                  ),
                )
              ],
            ),
          ),
 
          // ! NOTE: Desckription
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              top: defaultMargin,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Deskripsi',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'The pain itself is important to the main adipisicing elite. Extremely flexible The annoyances which even the advantage must be repudiated are the result of the pleasures of toil never let any one of them flatter him',
                  style: subtitleTextStyle.copyWith(
                    fontWeight: light
                  ),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),

          // ! NOTE : Familiar Shoes
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              top: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultMargin,
                  ),
                  child: Text(
                    'Barang Familiar Lainnya',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: familiarShoes.map((image){
                      index++;
                      return Container(margin: EdgeInsets.only(left: index == 0 ? defaultMargin : 0), child: familiarShoesCard(image));
                    }).toList(),
                  ),
                )
              ],
            ),
          ),

          // ! NOTE : BUTTON
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(defaultMargin),
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/detail-chat');
                  },
                  child: Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/button_chat.png',
                        )
                      )
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    height: 54,
                    child: TextButton(
                      onPressed: (){
                        showSuccessDialog();
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        backgroundColor: primaryColor
                      ),
                      child: Text(
                        'Tambah Keranjang',
                        style: primaryTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 16
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor6,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}