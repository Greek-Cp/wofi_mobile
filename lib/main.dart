import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wofi_mobile/page/PageAkunSaya.dart';
import 'package:wofi_mobile/page/PageEditProfile.dart';
import 'package:wofi_mobile/page/PageTentangKami.dart';
import 'package:wofi_mobile/page/PageUtama.dart';
import 'package:wofi_mobile/provider/ProviderAccount.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderAccount(),
      child: MaterialApp(
        initialRoute: PageUtama.routeName.toString(),
        routes: {
          PageUtama.routeName.toString(): (context) => PageUtama(),
          PageAkunSaya.routeName.toString(): (context) => PageAkunSaya(),
          PageEditProfile.routeName.toString(): (context) => PageEditProfile(),
          PageTentangKami.routeName.toString(): (context) => PageTentangKami()
        },
      ),
    );
  }
}
