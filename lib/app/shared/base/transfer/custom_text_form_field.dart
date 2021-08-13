import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

import '../../themes/app_theme.dart';

class CustomFormField extends StatelessWidget {
  final MoneyMaskedTextController moneyController;
  final Function(String value) onChanged;

  const CustomFormField({
    Key? key,
    required this.moneyController,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      autofocus: true,
      controller: moneyController,
      keyboardType: TextInputType.number,
      style: AppTheme.textStyles.values.copyWith(fontSize: 32),
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
          ),
        ),
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
