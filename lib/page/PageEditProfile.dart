import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wofi_mobile/const/color.dart';

class PageEditProfile extends StatefulWidget {
  static String? routeName = "/PageEditProfile";

  @override
  State<PageEditProfile> createState() => _PageEditProfileState();
}

class _PageEditProfileState extends State<PageEditProfile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
      builder: (context, child) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                    ),
                    Expanded(
                      child: Text(
                        "Edit Profil",
                        style: TextStyle(fontSize: 20.sp),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                AppColor.colorButtonPrimary)),
                        onPressed: () {},
                        child: Text(
                          "SIMPAN",
                          style: TextStyle(fontSize: 10.sp),
                        ),
                      ),
                    )
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(
                      label: Text(
                    "Nama",
                    style: TextStyle(fontSize: 15.sp),
                  )),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      label: Text(
                    "Email",
                    style: TextStyle(fontSize: 15.sp),
                  )),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      label: Text(
                    "Nomor Telepon",
                    style: TextStyle(fontSize: 15.sp),
                  )),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      label: Text(
                    "Masukkan Kata Sandi Lama",
                    style: TextStyle(fontSize: 15.sp),
                  )),
                  obscureText: true,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      label: Text(
                    "Masukkan Kata Sandi Baru",
                    style: TextStyle(fontSize: 15.sp),
                  )),
                  obscureText: true,
                ),
              ]),
            ),
          ),
        );
      },
    );
  }
}
