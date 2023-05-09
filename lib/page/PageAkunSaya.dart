import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wofi_mobile/const/color.dart';
import 'package:wofi_mobile/page/PageEditProfile.dart';
import 'package:wofi_mobile/page/PageTentangKami.dart';
import 'package:wofi_mobile/provider/ProviderAccount.dart';

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
    final ProviderAkun = Provider.of<ProviderAccount>(context);
    String username = ProviderAkun.modelDetailAccount!.nama.toString();
    String email = ProviderAkun.modelDetailAccount!.email.toString();
    String noTelepon = ProviderAkun.modelDetailAccount!.noTelepon.toString();

    return ScreenUtilInit(builder: (context, child) {
      return Scaffold(
        body: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 20.sp),
            child: SafeArea(
              child: Card(
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
                            "$username",
                            style: TextStyle(fontSize: 20.sp),
                          ),
                          Text(
                            "$noTelepon",
                            style: TextStyle(fontSize: 10.sp),
                          ),
                          Text("$email", style: TextStyle(fontSize: 10.sp)),
                          Text("Alamat", style: TextStyle(fontSize: 10.sp))
                        ],
                      )
                    ],
                  ),
                ),
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
