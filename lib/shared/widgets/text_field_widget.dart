import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatefulWidget {
  dynamic padding = const EdgeInsets.only(top: 16);
  TextInputType? keyboardType = TextInputType.none;
  String? labelText;
  int? maxLines;
  ValueChanged<String>? onChanged;
  String? errorText;
  FormFieldValidator<String>? validator;
  String? hintText;
  bool? enableSuggestions = false;
  double? borderRadius;
  bool? obscureText = false;
  Color? enabledBorderColor;
  Color? focusedBorderColor;
  final TextEditingController? controller;

  TextFieldWidget({
    Key? key,
    this.padding,
    this.labelText,
    this.obscureText,
    this.keyboardType,
    this.errorText,
    this.validator,
    this.hintText,
    this.maxLines,
    this.enableSuggestions,
    this.borderRadius,
    this.onChanged,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.controller,
  }) : super(key: key);

  @override
  State<TextFieldWidget> createState() {
    return _TextFieldWidgetState();
  }
}

// ignore: must_be_immutable
class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: TextFormField(
          controller: widget.controller,
          obscureText: widget.obscureText ?? false,
          enableSuggestions: widget.enableSuggestions ?? false,
          autocorrect: false,
          keyboardType: widget.keyboardType,
          validator: widget.validator,
          maxLines: widget.maxLines ?? 1,
          style: GoogleFonts.nunito(
            textStyle: TextStyle(
              color: Colors.grey[800],
              fontSize: 16,
            ),
          ),
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            isDense: true,
            labelText: widget.labelText,
            hintText: widget.hintText,
            hintStyle: GoogleFonts.nunito(
              textStyle: TextStyle(
                fontSize: 16,
                color: Colors.grey[800],
              ),
            ),
            errorText: widget.errorText,
            enabledBorder: OutlineInputBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(widget.borderRadius ?? 12)),
              borderSide: BorderSide(
                  color: widget.enabledBorderColor ?? Colors.grey.shade300,
                  width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: widget.focusedBorderColor ?? Colors.grey.shade500,
                  width: 1),
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 12),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            labelStyle: GoogleFonts.nunito(
              textStyle: TextStyle(color: Colors.grey.shade500),
            ),
          ),
        ),
      ),
    );
  }
}
