import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10
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
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/image_shoes.png',
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
                    ),
                    Text(
                      'Rp. 250.000',
                      style: priceTextStyle,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/button_add.png',
                    width: 16,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    '2',
                    style: blackTextStyle.copyWith(
                      fontWeight: medium
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Image.asset(
                    'assets/button_min.png',
                    width: 16,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Image.asset(
                'assets/icon_remove.png',
                width: 10,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                'Hapus',
                style: alertTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: light
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}