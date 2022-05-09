import 'package:flutter/material.dart';
import 'package:tb_flutter_assignment/Widgets/m_outlined_button.dart';
import 'package:tb_flutter_assignment/Widgets/m_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        //SingleChildScrollView is used to avoid renderflex issue when we tap on any textfield
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  maxRadius: MediaQuery.of(context).size.height * 0.1,
                  backgroundImage: const NetworkImage(
                      "https://picsum.photos/seed/picsum/200/300"),
                ),
                //MTextFormField is custom text form field to make it use throughout the app which improves code reusability
                const MTextFormField(
                  hintText: "Username",
                ),
                const MTextFormField(
                  hintText: "Password",
                  obscureText: true,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(
                        color: Colors.red.withOpacity(0.7),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                //MOutlinedButton is a custom made button
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: MOutlinedButton(
                    title: "SignIn",
                    onTap: () {},
                  ),
                ),
                const Text(
                  "Or Sign up with",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    circleLogo("assets/images/google_logo.png"),
                    circleLogo("assets/images/facebook_logo.png")
                  ],
                ),
                RichText(
                  text: const TextSpan(
                    text: 'New member?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'SignUp',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.orange)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

//functional custom widget for reusabaility and to reduce code
  Widget circleLogo(String imageUrl) {
    return CircleAvatar(
        maxRadius: MediaQuery.of(context).size.height * 0.025,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage(imageUrl));
  }
}
