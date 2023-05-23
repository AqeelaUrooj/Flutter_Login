import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            
            children: [
              const SizedBox(
                height: 50,
              ),
              const CircleAvatar(
                radius: 56,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/profile.jpg'), 
              ),
              const SizedBox(
                height: 14,
              ),
              const Text(
                "Aqeela Urooj",
                style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Pacifico',),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Student Flutter",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                   ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: 1,
                width: 130,
                color: Colors.teal[300],
              ),
              const SizedBox(
                height: 80,
              ),
               Container(
                height: 46,
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 12, right: 12),
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Text(
                      'aqeelaurooj@gmail.com',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 46,
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 12, right: 12),
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)),
                child: Row(
                  children: const [
                    Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Text("123456789",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w700))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

