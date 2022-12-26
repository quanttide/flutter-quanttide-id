/// 表单字段组件


import 'package:flutter/material.dart';


/// 手机号表单字段
class PhoneNumberFormField extends StatelessWidget {
  const PhoneNumberFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: '手机号',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
  }
}

/// 密码表单字段
class PasswordFormField extends StatelessWidget {
  const PasswordFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: 'some password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: '密码',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
  }
}