import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/me.jpg'),

              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Yousif Abughali ',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                trailing: const Icon(Icons.arrow_forward_ios),
                title: const Text('Account Settings'),
              ), ListTile(
                leading: const Icon(Icons.shopping_bag),
                trailing: const Icon(Icons.arrow_forward_ios),
                title: const Text('My orders'),
              ),
              ListTile(
                leading: const Icon(Icons.location_on_outlined),
                trailing: const Icon(Icons.arrow_forward_ios),
                title: const Text('Address'),
              ),
              ListTile(
                leading: const Icon(Icons.language),
                trailing: const Icon(Icons.arrow_forward_ios),
                title: const Text('Language'),
              ),
              SizedBox(height: 10,),
              Container(width:MediaQuery.of(context).size.width/2,child: ElevatedButton(onPressed: (){}, child: Text('Logout')))
            ],
          ),
        ),
      ),
    );
  }
}
