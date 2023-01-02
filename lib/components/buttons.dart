import 'package:flutter/material.dart';

class ButtonElevated extends ElevatedButton {
  const ButtonElevated(
      {super.key, required super.onPressed, required super.child});
}

class ButtonOutlined extends OutlinedButton {
  const ButtonOutlined(
      {super.key, required super.onPressed, required super.child});
}

class ButtonPlain extends TextButton {
  const ButtonPlain(
      {super.key, required super.onPressed, required super.child});
}
