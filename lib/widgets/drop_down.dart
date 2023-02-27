import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ModelsDrownDownWidget extends StatefulWidget {
  const ModelsDrownDownWidget({super.key});

  @override
  State<ModelsDrownDownWidget> createState() => _ModelsDrownDownWidgetState();
}

class _ModelsDrownDownWidgetState extends State<ModelsDrownDownWidget> {
  String currentModel = 'Model1';
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      dropdownColor: scaffoldBackgroundColor,
      iconEnabledColor: Colors.white,
      items: getModelsItem,
      value: currentModel,
      onChanged: (value) {
        setState(() {
          currentModel = value.toString();
        });
      },
    );
  }
}
