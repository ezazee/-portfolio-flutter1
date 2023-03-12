import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 12,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 12
      ),
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
      child: Row(
        children: [ 
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(
                  'assets/image_shoes.png'
                )
              )
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sepatu Super',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Rp. 250.000',
                  style: priceTextStyle,
                )
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            '2 Barang',
            style: secondaryTextStyle.copyWith(
              fontSize: 12
            ),
          )
        ],
      ),
    );
  }
}