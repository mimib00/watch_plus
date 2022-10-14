import 'package:flutter/material.dart';
import 'package:watch_plus/meta/utils/constants.dart';

class WatchInput extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData? icon;
  final bool? obscure;
  final String? Function(String? value)? validator;
  final TextInputType keybowrdType;
  const WatchInput({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
    this.obscure,
    this.icon,
    this.keybowrdType = TextInputType.text,
  });

  @override
  State<WatchInput> createState() => _WatchInputState();
}

class _WatchInputState extends State<WatchInput> {
  late bool obscure;
  @override
  void initState() {
    obscure = widget.obscure ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        style: Theme.of(context).textTheme.labelMedium,
        obscureText: obscure,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: widget.keybowrdType,
        decoration: InputDecoration(
          hintText: widget.hintText,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          prefixIcon: widget.icon != null
              ? Icon(
                  widget.icon,
                  color: kPrimaryColor,
                )
              : null,
          suffixIcon: widget.obscure != null
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      obscure = !obscure;
                    });
                  },
                  child: Icon(
                    obscure ? Icons.visibility : Icons.visibility_off,
                    color: kPrimaryColor,
                  ),
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: kPrimaryColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: kPrimaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: kPrimaryColor),
          ),
        ),
      ),
    );
  }
}
