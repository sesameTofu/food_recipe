import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe/core/library_style.dart';

class TextFieldCustom extends StatelessWidget {
  final String? title;
  final String? symbol;
  final String? hintText;
  final String? amountSymbol;
  final bool? onlyNumber;
  final bool? enable;
  final bool? isAvailable;
  final bool? error;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final VoidCallback? onTapScanQR;
  final VoidCallback? onTapContact;
  final VoidCallback? onTapMax;
  final Color? hintTextColor;
  final Color? colorContainer;

  const TextFieldCustom({
    Key? key,
    this.title,
    this.symbol,
    this.hintText,
    this.amountSymbol,
    this.onChanged,
    this.onTapScanQR,
    this.onTapMax,
    this.controller,
    this.onlyNumber,
    this.enable,
    this.isAvailable,
    this.onTapContact,
    this.hintTextColor,
    this.colorContainer,
    this.error,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (title != null) ...[
          Text(
            title ?? '',
            style:
                theme.font.smallTextRegular.copyWith(color: theme.color.black),
          ),
          const SizedBox(height: 8),
        ],
        Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: colorContainer ?? theme.color.white,
              border: Border.all(color: theme.color.gray4)),
          child: TextField(
            controller: controller,
            enabled: enable,
            decoration: _inputDecoration(),
            onChanged: onChanged,
            keyboardType: (onlyNumber ?? false)
                ? const TextInputType.numberWithOptions(decimal: true)
                : TextInputType.text,
          ),
        ),
      ],
    );
  }

  _inputDecoration() {
    return InputDecoration(
      isDense: true,
      border: InputBorder.none,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide.none,
      ),
      disabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide.none,
      ),
      hintText: hintText,
      hintStyle: theme.font.smallerTextRegular
          .copyWith(color: hintTextColor ?? theme.color.gray4),
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: theme.color.primary100, width: 1.5),
      ),
    );
  }
}
