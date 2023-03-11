import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';
import 'package:frontend/widgets/chat_tile.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          'Chat',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

  Widget emptyChat(){
    return Expanded(
        child: Container(
          color: backgroundColor1,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_headset.png',
                width: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Sepertinya Belum Ada Pesan',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Coba Lakukan Pembelanjaan Pada Seller!!',
                style: secondaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    ),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                  child: Text(
                    'Cari Barang Belanja',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }


    Widget content(){
      return Expanded(
        child: Container(
          color: backgroundColor1,
          width: double.infinity,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            children: [
              ChatTile(),
              ChatTile(),
              ChatTile(),
              ChatTile(),
              ChatTile(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}