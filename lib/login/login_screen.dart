import 'package:flutter/material.dart';
import 'package:amazon_web/login/app_colors.dart';
import 'package:amazon_web/login/app_icons.dart';
import 'package:amazon_web/login/app_styles.dart';
import 'package:amazon_web/login/responsive_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.backColor,
      body: SizedBox(
        height: height,
        width: width,
        child: Row(
          children: [
            ResponsiveWidget.isSmallScreen(context)
                ? const SizedBox()
                : Expanded(
                  child: Container(
                    color: AppColors.blueDarkColor,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/amazon_logo.jpg',
                            width: 150,
                            height: 80,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Amazon Web',
                            style: ralewayStyle.copyWith(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal:
                      ResponsiveWidget.isSmallScreen(context)
                          ? height * 0.032
                          : height * 0.12,
                ),
                color: AppColors.backColor,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height * 0.2),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Iniciemos ',
                              style: ralewayStyle.copyWith(
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                                color: AppColors.textColor,
                              ),
                            ),
                            TextSpan(
                              text: 'Sesion aqui 👇',
                              style: ralewayStyle.copyWith(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                                color: AppColors.blueDarkColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Hola, Ingresa tus datos para poder ingresar a tu cuenta.',
                        style: ralewayStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColor,
                        ),
                      ),
                      SizedBox(height: height * 0.06),

                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Correo electronico',
                          style: ralewayStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        height: 50,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColors.whiteColor,
                        ),
                        child: TextFormField(
                          controller: emailController,
                          style: ralewayStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.blueDarkColor,
                            fontSize: 12,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Image.asset(AppIcons.emailIcon),
                            ),
                            contentPadding: const EdgeInsets.only(top: 16.0),
                            hintText: 'INGRESA TU CORREO ELECTRONICO',
                            hintStyle: ralewayStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppColors.greyColor,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'CONTRASEÑA',
                          style: ralewayStyle.copyWith(
                            fontSize: 12.0,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6.0),
                      Container(
                        height: 50.0,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: AppColors.whiteColor,
                        ),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: _obscurePassword,
                          style: ralewayStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.blueDarkColor,
                            fontSize: 12.0,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Image.asset(AppIcons.lockIcon),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscurePassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: AppColors.greyColor,
                                size: 20,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                            ),
                            contentPadding: const EdgeInsets.only(top: 16.0),
                            hintText: 'INGRESA LA CONTRASEÑA',
                            hintStyle: ralewayStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppColors.greyColor,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),

                      Center(
                        child: InkWell(
                          onTap: () {
                            String email = emailController.text.trim();
                            String password = passwordController.text.trim();

                            if (email == "amazonuser@gmail.com" &&
                                password == "amazon4life") {
                              Navigator.pushReplacementNamed(
                                context,
                                '/amazon',
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    "Credenciales inválidas. Intenta de nuevo.",
                                  ),
                                ),
                              );
                            }
                          },
                          borderRadius: BorderRadius.circular(16.0),
                          child: Ink(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 70.0,
                              vertical: 18.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: AppColors.mainBlueColor,
                            ),
                            child: Text(
                              'INICIA SESION',
                              style: ralewayStyle.copyWith(
                                fontWeight: FontWeight.w700,
                                color: AppColors.blackColor,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
