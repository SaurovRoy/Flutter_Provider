import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_all_example/provider/auth_provider.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authProvider=Provider.of<AuthProvider>(context);
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Login With Provider'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller:emailController ,
              decoration: InputDecoration(
                hintText: 'Email'
              ),
            ),
            const SizedBox(height: 20,),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: 'Password'
              ),
            ),
            const SizedBox(height: 60,),
            GestureDetector(
              onTap: (){
                authProvider.login(emailController.text.toString(), passwordController.text.toString());
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child:  Center(
                  child:authProvider.loading?const CircularProgressIndicator(): const Text('Log In'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
