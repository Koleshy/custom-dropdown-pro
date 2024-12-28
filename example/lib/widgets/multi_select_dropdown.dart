import 'dart:developer';

import 'package:custom_dropdown_pro/custom_dropdown.dart';
import 'package:custom_dropdown_pro_example/models/job.dart';
import 'package:flutter/material.dart';

class MultiSelectDropdown extends StatelessWidget {
  const MultiSelectDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomDropdown<Job>.multiSelect(
      items: jobItems,
      initialItems: jobItems.take(2).toList(),
      onListChanged: (value) {
        log('MultiSelectDropdown onChanged value: $value');
      },
    );
  }
}
