import 'package:flutter/material.dart';
import 'package:time_boker_prestataire/pages/change_service.dart';
import 'package:time_boker_prestataire/widgets/Header.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ChangeProfile extends StatefulWidget {
  const ChangeProfile({Key? key}) : super(key: key);

  @override
  State<ChangeProfile> createState() => _ChangeProfileState();
}

class _ChangeProfileState extends State<ChangeProfile> {
  // This is the file that will be used to store the image
  File? _cover_image;
  File? _profile_image;
  File _default_image = File('img/logo.png');
  // This is the image picker
  final _picker = ImagePicker();
  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _cover_image = File(pickedImage.path);
      });
    }
  }

  Future<void> _takeImage() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      setState(() {
        _cover_image = File(pickedImage.path);
      });
    }
  }

  Future<void> _openProfileImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _profile_image = File(pickedImage.path);
      });
    }
  }

  Future<void> _takeProfileImage() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      setState(() {
        _profile_image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 18, right: 18),
            child: Header(back: true, search: false),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Modifier les Infos ',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey[600],
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: (_cover_image != null)
                                ? FileImage(_cover_image!)
                                : FileImage(_default_image)),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 5),
                        alignment: Alignment.center,
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                              image: (_profile_image != null)
                                  ? FileImage(_profile_image!)
                                  : FileImage(_default_image)),
                          shape: BoxShape.circle,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('Nom de l\'entretrise'),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0))),
                      hintText: 'ex : Time Booker Prod',
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('Slogan'),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0))),
                      hintText: 'ex : Notre satisfaction, Notre preocupation .',
                    ),
                  ),
                ),
                SizedBox(height: 46),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(18)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              showImageProfileOption(context);
                            },
                            icon: Icon(
                              Icons.add_a_photo_outlined,
                              size: 40,
                            ),
                          ),
                          Text('Profile'),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(18)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: IconButton(
                              onPressed: () {
                                showImageCoverOption(context);
                              },
                              icon: Icon(
                                Icons.add_a_photo_outlined,
                                size: 40,
                              ),
                            ),
                          ),
                          Text('Couverture'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(18)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Enregistrer',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 254, 212, 152),
                          borderRadius: BorderRadius.circular(18)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Annuler',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showImageProfileOption(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      //    color: Colors.black12,
                      borderRadius: BorderRadius.circular(18)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: _openProfileImagePicker,
                        icon: Icon(
                          Icons.image,
                          size: 40,
                        ),
                      ),
                      Text('Gallery'),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      //     color: Colors.bltack12,
                      borderRadius: BorderRadius.circular(18)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: _takeProfileImage,
                          icon: Icon(
                            Icons.photo_camera_outlined,
                            size: 40,
                          ),
                        ),
                      ),
                      Text('Camera'),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  void showImageCoverOption(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      //    color: Colors.black12,
                      borderRadius: BorderRadius.circular(18)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: _openImagePicker,
                        icon: Icon(
                          Icons.image,
                          size: 40,
                        ),
                      ),
                      Text('Gallery'),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      //     color: Colors.bltack12,
                      borderRadius: BorderRadius.circular(18)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: _takeImage,
                          icon: Icon(
                            Icons.photo_camera_outlined,
                            size: 40,
                          ),
                        ),
                      ),
                      Text('Camera'),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
