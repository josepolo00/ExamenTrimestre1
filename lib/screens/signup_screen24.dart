import 'package:flutter/material.dart';
import 'package:examenjbp24/router/app_routes24.dart';
import 'package:examenjbp24/screens/screens24.dart';
import 'package:examenjbp24/widgets/widgets24.dart';

class SignupScreen24 extends StatelessWidget {
   
  const SignupScreen24({Key? key}) : super(key: key);
  
  
 @override
  Widget build(BuildContext context) {

  final myFormKey = GlobalKey<FormState>();

  final Map<String, String> formValues = {
      'usuario':      'josebp',
      'contraseña':   '123456',
    };


    return Scaffold(
      body: SingleChildScrollView(         
         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
         child: Form(
          key: myFormKey,
           child: Column(
            children: [
          const SizedBox(height: 30),
          const FlutterLogo(size: 100,),
          const SizedBox(height: 20),
          CustomTextFormField(
                hintText: 'Usuario',
                suffixIcon: Icons.group_outlined, 
                formProperty: 'usuario', 
                formValues: formValues,
              ),
          const SizedBox(height: 20),
          CustomTextFormField(
                hintText: 'Apellidos',
                formProperty: 'apellidos', 
                formValues: formValues,
              ),
          const SizedBox(height: 20),
          CustomTextFormField(
                hintText: 'E-mail',
                labelText: 'Correo electrónico',
                keyboardType: TextInputType.emailAddress,
                formProperty: 'email', 
                formValues: formValues,
              ),
          const SizedBox(height: 20),
          CustomTextFormField(
                hintText: 'Contraseña',
                labelText: 'Contraseña',
                formProperty: 'contraseña', 
                formValues: formValues,
              ),
          const SizedBox(height: 20),
          CustomTextFormField(
                hintText: 'Contraseña',
                labelText: 'Contraseña',
                formProperty: 'contraseña', 
                formValues: formValues,
                obscureText: true,
              ),
          const SizedBox(height: 20),
          ElevatedButton(
                child: const SizedBox(
                  width: double.infinity,   
                  child: Center( child: Text('Enviar')),
                ),
                onPressed: (){
                  FocusScope.of(context).requestFocus(FocusNode());   

                  if (!myFormKey.currentState!.validate()){
                    print('Formulario no valido');
                    return;
                  } else {
                    print(formValues);
                    final route = MaterialPageRoute(builder: (context) => const ListviewScreen24());
                    Navigator.pushReplacement(context, route);
                  }
                  
                },
              ),
            ],
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed:(){
          final route = MaterialPageRoute(builder: (context) => const HomeScreen24());
          Navigator.pushReplacement(context, route);
        }),
    );
  }
}