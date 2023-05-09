import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wofi_mobile/const/color.dart';
import 'package:wofi_mobile/model/ModelDetailAccount.dart';
import 'package:wofi_mobile/page/PageUtama.dart';
import 'package:wofi_mobile/provider/ProviderAccount.dart';

class PageEditProfile extends StatefulWidget {
  static String? routeName = "/PageEditProfile";

  @override
  State<PageEditProfile> createState() => _PageEditProfileState();
}

class _PageEditProfileState extends State<PageEditProfile> {
  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController noTeleponController = TextEditingController();
  TextEditingController katasandiLamaController = TextEditingController();
  TextEditingController katasandiBaruController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final providerDetail = Provider.of<ProviderAccount>(context);

    return ScreenUtilInit(
      builder: (context, child) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(PageUtama.routeName.toString());
                      },
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
                        onPressed: () {
                          ModelDetailAccount mdl = ModelDetailAccount(
                              namaController.text,
                              emailController.text,
                              noTeleponController.text,
                              katasandiBaruController.text,
                              katasandiLamaController.text);
                          providerDetail.setDetailAccount(mdl);
                          Navigator.of(context)
                              .pushNamed(PageUtama.routeName.toString());
                        },
                        child: Text(
                          "SIMPAN",
                          style: TextStyle(fontSize: 10.sp),
                        ),
                      ),
                    )
                  ],
                ),
                TextFormField(
                  controller: namaController,
                  decoration: InputDecoration(
                      label: Text(
                    "Nama",
                    style: TextStyle(fontSize: 15.sp),
                  )),
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      label: Text(
                    "Email",
                    style: TextStyle(fontSize: 15.sp),
                  )),
                ),
                TextFormField(
                  controller: noTeleponController,
                  decoration: InputDecoration(
                      label: Text(
                    "Nomor Telepon",
                    style: TextStyle(fontSize: 15.sp),
                  )),
                ),
                TextFormField(
                  controller: katasandiLamaController,
                  decoration: InputDecoration(
                      label: Text(
                    "Masukkan Kata Sandi Lama",
                    style: TextStyle(fontSize: 15.sp),
                  )),
                  obscureText: true,
                ),
                TextFormField(
                  controller: katasandiBaruController,
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
