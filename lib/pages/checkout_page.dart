import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';
import 'package:frontend/widgets/checkout_card.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget content(){
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin
        ),
        children: [
          // ! NOTE: List Items
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'List Items',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium
                  ),
                ),
                CheckoutCard(),
                CheckoutCard(),
              ],
            ),
          ),

          // ! NOTE: ADDRESS DETAIL
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2,
              ),
        ],
        borderRadius: BorderRadius.circular(12),
        color: primaryTextColor,
      ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address Details',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/icon_store_location.png',
                          width: 40,
                        ),
                        Image.asset(
                          'assets/icon_line.png',
                          color: blackColor,
                          height: 30,
                        ),
                        Image.asset(
                          'assets/icon_your_address.png',
                          width: 40,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Store Location',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          'Adidas Core',
                          style: blackTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                        SizedBox(
                          height: defaultMargin,
                        ),
                        Text(
                          'Your Address',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          'Marsemoon',
                          style: blackTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          // ! NOTE: Payment Summary
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2,
                ),
              ],
              borderRadius: BorderRadius.circular(12),
              color: primaryTextColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total Pembayaran',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Produk',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12
                      ),
                    ),
                    Text(
                      '2 Barang',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Harga Produk',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12
                      ),
                    ),
                    Text(
                      'Rp. 250.000',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ongkir',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12
                      ),
                    ),
                    Text(
                      'GRATIS',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Divider(
                  thickness: 1,
                  color: subtitleColor,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Harga',
                      style: priceTextStyle.copyWith(
                        fontWeight: semiBold
                      ),
                    ),
                    Text(
                      'Rp. 520.000.000',
                      style: priceTextStyle.copyWith(
                        fontWeight: semiBold
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          // ! NOTE: Checkout Button
          SizedBox(
            height: defaultMargin,
          ),
          Divider(
            thickness: 1,
            color: subtitleColor,
          ),
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.symmetric(
              vertical: defaultMargin
            ),
            child: TextButton(
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, '/checkout-success', (route) => false);
              },
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ),
              child: Text(
                'Beli Sekarang',
                style: primaryTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 16
                ),
              ),
            ),
          )
        ],
      );
    }    
    return Scaffold(
      backgroundColor: backgroundColor1,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Checkout Detail'
        ),
      ),
      body: content(),
    );
  }
}