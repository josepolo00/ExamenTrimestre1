import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  
  final bool obscureText;


  final String formProperty;
  final Map<String,String> formValues;


  const CustomTextFormField({
    Key? key, this.hintText, this.labelText, this.suffixIcon, this.obscureText=false, required this.formProperty, required this.formValues, this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,                      
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {                            
        if (value!.length < 6){
          return 'Minimo 6 caracteres';
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(                    
        hintText: hintText,                                 
        labelText: labelText,                               
        suffixIcon: Icon (suffixIcon),                           

      ),
    );
  }
}