import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wofi_mobile/const/color.dart';
import 'package:wofi_mobile/page/PageEditProfile.dart';
import 'package:wofi_mobile/page/PageTentangKami.dart';

class PageAkunSaya extends StatefulWidget {
  static String? routeName = "/PageAkunSaya";
  @override
  State<PageAkunSaya> createState() => _PageAkunSayaState();
}

class _PageAkunSayaState extends State<PageAkunSaya> {
  List<String> listMenu = ["Edit Profil", "Tentang Kami", "Log Out"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(builder: (context, child) {
      return Scaffold(
        body: Column(children: [
          Text(
              "helo awokwaokwakowakowaokwakowao\nsdsaodsoakdsakoda\nasdkoasokdsa\n"),
          Card(
            color: AppColor.colorHeaderAkun,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.account_circle_outlined,
                    size: 80,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Username",
                        style: TextStyle(fontSize: 20.sp),
                      ),
                      Text(
                        "Nomor Telepon",
                        style: TextStyle(fontSize: 10.sp),
                      ),
                      Text("Email", style: TextStyle(fontSize: 10.sp)),
                      Text("Alamat", style: TextStyle(fontSize: 10.sp))
                    ],
                  )
                ],
              ),
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(PageEditProfile.routeName.toString());
                  },
                  child: ComponentMenu("Edit Profile")),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(PageTentangKami.routeName.toString());
                  },
                  child: ComponentMenu("Tentang Kami")),
              ComponentMenu("Log Out"),
            ],
          )
        ]),
      );
    });
  }

  Widget ComponentMenu(String namaMenu) {
    return Padding(
      padding: EdgeInsets.only(left: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$namaMenu",
            style: TextStyle(fontSize: 15.sp),
          ),
          Divider(
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
