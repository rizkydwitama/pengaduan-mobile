import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.name,
    required this.hintText,
    this.initialValue,
    this.label,
    this.enabled = true,
    this.obsecure = false,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.validator,
    this.suffixIcon,
    this.inputFormatters,
  });

  final String name;
  final String hintText;
  final String? label;
  final Widget? suffixIcon;
  final bool enabled;
  final bool obsecure;
  final String? initialValue;
  final TextInputType? keyboardType;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      name: name,
      enabled: enabled,
      obscureText: obsecure,
      initialValue: initialValue,
      validator: validator,
      keyboardType: keyboardType,
      onChanged: onChanged,
      inputFormatters: inputFormatters,
      style: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(color: Colors.black),
      decoration: InputDecoration(
        fillColor: Colors.transparent,
        labelText: label,
        hintText: hintText,
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
        hintStyle: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: Colors.grey),
        labelStyle: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: Colors.black),
        errorStyle: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: Colors.red),
        enabledBorder: OutlineInputBorder(
          borderSide:
          const BorderSide(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.black, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
      ),
    );
  }
}