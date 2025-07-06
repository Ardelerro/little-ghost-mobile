import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../state/settings_provider.dart';

class GestureToggleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SettingsProvider>(context);
    return SwitchListTile(
      title: const Text('Gesture Control'),
      value: provider.settings.gestureControlEnabled,
      onChanged: (val) => provider.toggleGestureControl(),
    );
  }
}