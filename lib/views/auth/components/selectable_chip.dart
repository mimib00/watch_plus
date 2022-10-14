import 'package:flutter/material.dart';
import 'package:watch_plus/meta/utils/constants.dart';

class SelectableChip extends StatefulWidget {
  final String title;
  final Function(String value) onTap;
  const SelectableChip({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  State<SelectableChip> createState() => _SelectableChipState();
}

class _SelectableChipState extends State<SelectableChip> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: GestureDetector(
        onTap: () {
          if (selected) {
            setState(() {
              selected = false;
            });
          } else {
            setState(() {
              selected = true;
            });

            widget.onTap.call(widget.title);
          }
        },
        child: Chip(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          label: Text(widget.title),
          backgroundColor: selected ? kPrimaryColor : kSecondaryColor.withOpacity(0.15),
        ),
      ),
    );
  }
}
