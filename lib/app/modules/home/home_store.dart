import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  MoneyMaskedTextController moneycontroller = MoneyMaskedTextController(
    leftSymbol: "R\$ ",
    precision: 2,
    initialValue: 0.00,
  );

  @observable
  String value = '';

  @action
  void onChanged(String value) {
    this.value = moneycontroller.numberValue.toString();
    if (this.value == '0.0') {
      this.value = '';
    }
  }
}
