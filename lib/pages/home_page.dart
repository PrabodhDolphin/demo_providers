import 'package:demo_providers/providers/home_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Padding(padding: const EdgeInsets.all(30),
        child: ChangeNotifierProvider<HomePageProvider>(
          create: (context) => HomePageProvider(),

          child: Consumer<HomePageProvider>(
            builder: (context, provide, child)  {
              return Column(
                children: [
                  Text(provide.eligibilityMessage.toString()),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        hintText: "Enter your age"
                    ),
                    onChanged: (value) {
                      int age = value.isEmpty?0:int.parse(value);
                      provide.checkEligibility(age);
                    },
                  ),
                ],
              );
            },

          ),
        ),),

      ),
    );
  }
}
