// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  final _$moneycontrollerAtom = Atom(name: 'HomeStoreBase.moneycontroller');

  @override
  MoneyMaskedTextController get moneycontroller {
    _$moneycontrollerAtom.reportRead();
    return super.moneycontroller;
  }

  @override
  set moneycontroller(MoneyMaskedTextController value) {
    _$moneycontrollerAtom.reportWrite(value, super.moneycontroller, () {
      super.moneycontroller = value;
    });
  }

  final _$valueAtom = Atom(name: 'HomeStoreBase.value');

  @override
  String get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(String value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase');

  @override
  void onChanged(String value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.onChanged');
    try {
      return super.onChanged(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
moneycontroller: ${moneycontroller},
value: ${value}
    ''';
  }
}
