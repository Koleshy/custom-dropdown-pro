import 'dart:developer';

import 'package:custom_dropdown_pro/custom_dropdown.dart';
import 'package:flutter/material.dart';

const List<String> _list = [
  'Developer',
  'Designer',
  'Consultant',
  'Student',
];

class SimpleDropdown extends StatelessWidget {
  const SimpleDropdown({Key? key}) : super(key: key);

  static const Color colorText = Colors.white;
  static const Color colorBackground = Color.fromRGBO(0, 152, 218, 1.0);

  @override
  Widget build(BuildContext context) {

    return CustomDropdown<String>(
      hintText: 'Tipo de Documento',
      items: _list,
      //initialItem: _list[0],
      excludeSelected: false,
      //closedHeaderPadding: const EdgeInsets.all(20), //padding for header
      onChanged: (value) {
        log('SimpleDropdown onChanged value: $value');
      },
      closedHeaderPadding: const EdgeInsets.fromLTRB(24,8,24,8),
      headerBuilder: (context, selectedItem, enabled) {
        return Text(
          selectedItem.toString(),
          style: TextStyle(
            color: colorText,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        );
      },
      decoration: CustomDropdownDecoration(
        headerStyle: const TextStyle(color: Colors.red),
        closedBorderRadius: BorderRadius.circular(32),
        closedFillColor: colorBackground,
        expandedFillColor: Colors.white,
        hintStyle: const TextStyle(fontSize: 18, color: Colors.white),
        closedSuffixIcon: const Icon(
          Icons.keyboard_arrow_down,
          color: Colors.white
        ),
        expandedSuffixIcon: const Icon(
          Icons.keyboard_arrow_up,
          color: Colors.grey
        ),
      )
    );
  }
}
