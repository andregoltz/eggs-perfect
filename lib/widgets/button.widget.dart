import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final bool selected;
  final Function()? callback;

  const Button(
      {super.key,
      required this.label,
      this.selected = false,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 110,
      decoration: BoxDecoration(
        color: selected
            ? Theme.of(context).colorScheme.primary
            : Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          width: 1,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      child: TextButton(
        onPressed: callback,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
