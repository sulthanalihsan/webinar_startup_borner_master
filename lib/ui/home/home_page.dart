import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webinarstartupborneo/common/color_palettes.dart';
import 'package:webinarstartupborneo/common/image_asset.dart';
import 'package:webinarstartupborneo/common/sizes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(Sizes.dp20(context)),
          child: _buildHeader(context),
        ),
        Expanded(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Sizes.dp20(context)),
                child: _buildBanner(context),
              ),
              SizedBox(
                height: Sizes.dp16(context),
              ),
              Padding(
                padding: EdgeInsets.only(left: Sizes.dp20(context)),
                child: _buildPopularClass(context),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Sizes.dp20(context)),
                child: _buildLatestClass(context),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(children: [
                TextSpan(
                    text: 'Hi Sulthan\n',
                    style: GoogleFonts.montserrat(
                        color: ColorPalette.black,
                        fontWeight: FontWeight.w800,
                        fontSize: Sizes.dp20(context))),
                TextSpan(
                    text: 'Selamat Datang !',
                    style: GoogleFonts.montserrat(
                        color: ColorPalette.black,
                        fontSize: Sizes.dp16(context),
                        letterSpacing: 1.0))
              ]),
            ),
            Row(
              children: <Widget>[
                CircleAvatar(
                    backgroundColor: ColorPalette.bluePastel,
                    child: Image.asset(icNotification, scale: 20.0)),
                SizedBox(
                  width: Sizes.dp8(context),
                ),
                CircleAvatar(
                    backgroundColor: ColorPalette.bluePastel,
                    child: Image.asset(icShop, scale: 20.0)),
              ],
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: Sizes.dp16(context)),
          height: Sizes.height(context) * 0.065,
          child: TextField(
            cursorColor: ColorPalette.bluePastel,
            decoration: InputDecoration(
                hintText: 'Pencarian',
                suffixIcon: Container(
                  height: Sizes.height(context) * 0.065,
                  width: Sizes.height(context) * 0.06,
                  child: Material(
                    color: ColorPalette.bluePrimary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Image.asset(icSearch, scale: 20.0),
                  ),
                ),
                fillColor: ColorPalette.greyInput,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none)),
          ),
        ),
      ],
    );
  }

  Stack _buildBanner(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(imgPoster),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: Sizes.height(context) * 0.065,
            width: Sizes.height(context) * 0.06,
            child: Material(
              color: ColorPalette.bluePrimary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Image.asset(icArrowRight, scale: 20.0),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPopularClass(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Kelas Populer',
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w800, fontSize: Sizes.dp18(context)),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: Sizes.dp16(context)),
          height: Sizes.height(context) / 3.6,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            children: [
              Container(
                width: Sizes.width(context) / 1.7,
                margin: EdgeInsets.only(right: Sizes.dp12(context)),
                padding: EdgeInsets.all(Sizes.dp6(context)),
                color: ColorPalette.greyInput,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Image.asset(imgCourse5),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'UX Designer',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.montserrat(
                                fontSize: Sizes.dp18(context)),
                          ),
                          Row(
                            children: <Widget>[
                              Text('IDR 200.000,--',
                                  style: GoogleFonts.montserrat(
                                      fontSize: Sizes.dp16(context),
                                      letterSpacing: 1.0)),
                              Spacer(),
                              Text('4.5',
                                  style: GoogleFonts.montserrat(
                                      fontSize: Sizes.dp18(context))),
                              Image.asset(icStar, scale: 35.0)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: Sizes.width(context) / 1.7,
                margin: EdgeInsets.only(right: Sizes.dp12(context)),
                padding: EdgeInsets.all(Sizes.dp6(context)),
                color: ColorPalette.greyInput,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Image.asset(imgCourse6),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Icon Design',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.montserrat(
                                fontSize: Sizes.dp18(context)),
                          ),
                          Row(
                            children: <Widget>[
                              Text('IDR 100.000,--',
                                  style: GoogleFonts.montserrat(
                                      fontSize: Sizes.dp16(context),
                                      letterSpacing: 1.0)),
                              Spacer(),
                              Text('4.5',
                                  style: GoogleFonts.montserrat(
                                      fontSize: Sizes.dp18(context))),
                              Image.asset(icStar, scale: 35.0)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildLatestClass(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: Sizes.dp16(context)),
          child: Text(
            'Kelas Terbaru',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w800, fontSize: Sizes.dp18(context)),
          ),
        ),
        Container(
          color: ColorPalette.bluePastel,
          margin: EdgeInsets.only(bottom: Sizes.dp12(context)),
          child: ListTile(
            leading: Image.asset(imgCourse1),
            title: Text('Digital Transformation & Ecosistem',
                style: GoogleFonts.montserrat(fontSize: Sizes.dp18(context))),
            subtitle: Text('IDR 200.000,-',
                style: GoogleFonts.montserrat(fontSize: Sizes.dp16(context))),
          ),
        ),
        Container(
          color: ColorPalette.bluePastel,
          margin: EdgeInsets.only(bottom: Sizes.dp12(context)),
          child: ListTile(
            leading: Image.asset(imgCourse2),
            title: Text('Copywriting Pada Blog dan Social Media',
                style: GoogleFonts.montserrat(fontSize: Sizes.dp18(context))),
            subtitle: Text('IDR 100.000,-',
                style: GoogleFonts.montserrat(fontSize: Sizes.dp16(context))),
          ),
        ),
        Container(
          color: ColorPalette.bluePastel,
          margin: EdgeInsets.only(bottom: Sizes.dp12(context)),
          child: ListTile(
            leading: Image.asset(imgCourse3),
            title: Text('Android Studio Basic',
                style: GoogleFonts.montserrat(fontSize: Sizes.dp18(context))),
            subtitle: Text('IDR 300.000,-',
                style: GoogleFonts.montserrat(fontSize: Sizes.dp16(context))),
          ),
        ),
        Container(
          color: ColorPalette.bluePastel,
          margin: EdgeInsets.only(bottom: Sizes.dp12(context)),
          child: ListTile(
            leading: Image.asset(imgCourse4),
            title: Text('Optimalkan SEO Pada Website',
                style: GoogleFonts.montserrat(fontSize: Sizes.dp18(context))),
            subtitle: Text('IDR 200.000,-',
                style: GoogleFonts.montserrat(fontSize: Sizes.dp16(context))),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: FlatButton(
              child: Text("Lebih banyak",
                  style: GoogleFonts.montserrat(
                      fontSize: Sizes.dp16(context),
                      color: ColorPalette.bluePrimary)),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2.0, color: ColorPalette.bluePrimary),
                  borderRadius: BorderRadius.circular(8.0))),
        ),
        SizedBox(height: Sizes.dp16(context))
      ],
    );
  }
}
