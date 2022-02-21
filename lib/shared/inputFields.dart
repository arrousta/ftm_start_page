import 'package:flutter/material.dart';
import './colors.dart';
import './styles.dart';

TextEditingController nameController = TextEditingController();                  // Full Name
TextEditingController passwordController = TextEditingController();              // Password
TextEditingController nationalCodeController = TextEditingController();          // National code
TextEditingController personnelCodeController = TextEditingController();         // Personnel code
TextEditingController phoneNumCodeController = TextEditingController();          // Phone Number
TextEditingController confirmCodeController = TextEditingController();          // Confirm SMS Code

Container ftmFullNameTextInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
    margin: const EdgeInsets.only(top: 13),
    child: TextField(
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      cursorColor: primaryColor,
      style: inputFieldTextStyle,
      controller: nameController,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: inputFieldHintTextStyle,
          focusedBorder: inputFieldFocusedBorderStyle,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: inputFieldDefaultBorderStyle),
    ),
  );
}

Container ftmPasswordInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
    margin: const EdgeInsets.only(top: 13),
    child: TextField(
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      obscureText: true,
      cursorColor: primaryColor,
      style: inputFieldHintPaswordTextStyle,
      controller: passwordController,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: inputFieldHintPaswordTextStyle,
          focusedBorder: inputFieldFocusedBorderStyle,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: inputFieldDefaultBorderStyle),
    ),
  );
}

Container ftmNationalCodeInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
    margin: const EdgeInsets.only(top: 13),
    child: TextField(
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      cursorColor: primaryColor,
      style: inputFieldTextStyle,
      controller: nationalCodeController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: inputFieldHintTextStyle,
          focusedBorder: inputFieldFocusedBorderStyle,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: inputFieldDefaultBorderStyle),
    ),
  );
}

Container ftmPersonalCodeInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
    margin: const EdgeInsets.only(top: 13),
    child: TextField(
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      cursorColor: primaryColor,
      style: inputFieldTextStyle,
      controller: personnelCodeController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: inputFieldHintTextStyle,
          focusedBorder: inputFieldFocusedBorderStyle,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: inputFieldDefaultBorderStyle),
    ),
  );
}

Container ftmPhoneNumInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
    margin: const EdgeInsets.only(top: 13),
    child: TextField(
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      cursorColor: primaryColor,
      style: inputFieldTextStyle,
      controller: phoneNumCodeController,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: inputFieldHintTextStyle,
          focusedBorder: inputFieldFocusedBorderStyle,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: inputFieldDefaultBorderStyle),
    ),
  );
}

Container ftmConfirmCodeInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
    margin: const EdgeInsets.only(top: 13),
    child: TextField(
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      cursorColor: primaryColor,
      style: inputFieldTextStyle,
      controller: confirmCodeController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: inputFieldHintTextStyle,
          focusedBorder: inputFieldFocusedBorderStyle,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: inputFieldDefaultBorderStyle),
    ),
  );
}