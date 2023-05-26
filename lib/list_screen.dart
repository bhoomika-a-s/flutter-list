import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('ListView Project'),
        backgroundColor: const Color.fromARGB(255, 7, 89, 49),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (ctx,index){
            return ListTile(
              title: Text('PERSON $index'),
              subtitle: Text('message $index'),
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: Color.fromARGB(255, 7, 89, 49),
                backgroundImage: NetworkImage('https://media.istockphoto.com/id/1223671392/vector/default-profile-picture-avatar-photo-placeholder-vector-illustration.jpg?s=612x612&w=0&k=20&c=s0aTdmT5aU6b8ot7VKm11DeID6NctRCpB755rA1BIP0='),
              ),
              trailing: Text('1$index:00 PM'),
            );
          }, 
          separatorBuilder: (ctx,index){
            return const Divider(color: Color.fromARGB(255, 7, 89, 49),);
          }, 
          itemCount: 30
          ),
      ),
    );
  }
}

// child:ListView(
        //   children: List.generate(
        //     30, (index) {
        //     return Column(
        //       children: [
        //         Text('text $index'),
        //         const Divider(thickness:1,color:Colors.blueAccent),
        //       ],
        //     );
        //     },
        //   ),
        // ),