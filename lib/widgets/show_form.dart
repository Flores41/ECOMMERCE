import 'package:ecommerce_01/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/utils.dart';

class ShowForm extends StatefulWidget {
  const ShowForm({
    super.key,
    this.labelText,
    this.hintText,
    this.keyboardType,
    required this.isVisble,
    this.icon,
    this.paddingHorizonal,
    this.paddingVertical,
  });

  final String? labelText;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool isVisble;
  final IconData? icon;
  final double? paddingHorizonal;
  final double? paddingVertical;

  @override
  State<ShowForm> createState() => _ShowFormState();
}

class _ShowFormState extends State<ShowForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme.primary;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: widget.paddingHorizonal ?? 0,
          vertical: widget.paddingVertical ?? 0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              keyboardType: widget.keyboardType ?? TextInputType.text,
              decoration: InputDecoration(
                labelText: widget.labelText,
                hintText: widget.hintText,
                fillColor: colors.form,
                prefixIcon: Icon(
                  widget.icon,
                  color: colors.title.withOpacity(0.3),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colors.title),
                    borderRadius: BorderRadius.circular(15)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colors.form),
                    borderRadius: BorderRadius.circular(15)),
                labelStyle: TextStyle(color: colors.title.withOpacity(0.3)),
                floatingLabelStyle: TextStyle(
                  color: colors.title,
                ),
                hintStyle: TextStyle(color: colors.title.withOpacity(0.3)),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            widget.isVisble ? const Gap(50) : const Gap(20),
            widget.isVisble
                ? RectangleContainer(
                    colors: colors.primary,
                    radius: 10,
                    child: const DisplayWhiteText(
                      text: 'Let\'s Continue',
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        AppAlerts.displaySnackbar(context, 'Processing Data');
                      }
                    },
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
