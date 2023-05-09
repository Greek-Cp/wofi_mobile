import 'package:flutter/material.dart';
import 'package:wofi_mobile/model/ModelDetailAccount.dart';

class ProviderAccount extends ChangeNotifier {
  ModelDetailAccount? modelDetailAccount =
      ModelDetailAccount("", "", "", "", "");
  void setDetailAccount(ModelDetailAccount modelDetailAccount) {
    this.modelDetailAccount = modelDetailAccount;
    print("Set Success");
    notifyListeners();
  }
}
