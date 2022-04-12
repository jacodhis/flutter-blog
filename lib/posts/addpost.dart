import 'package:flutter/material.dart';
import 'package:newproject/customewidgets/formtextdescription.dart';
import 'package:newproject/customewidgets/formtextname.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  SizedBox heightBet = const SizedBox(
    height: 10.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormsName(
                myController: nameController,
                iccon: const Icon(Icons.person),
                name: 'Name',
              ),
              heightBet,
              TextFormsDescription(
                lines: 4,
                myController: descriptionController,
                iccon: const Icon(Icons.description),
                name: 'Description',
              ),
              heightBet,
              RaisedButton(
                  child: const Text('Post'),
                  color: Colors.blue,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('posting in progress ..'),
                        ),
                      );
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
