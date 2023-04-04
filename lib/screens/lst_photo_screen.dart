import 'package:blog_app/screens/preview_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class LstPhotoScreen extends StatelessWidget {
  LstPhotoScreen({Key? key}) : super(key: key);

  var _photosOfFriends = [
    'https://images.pexels.com/photos/36029/aroni-arsa-children-little.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://2.bp.blogspot.com/-wBk3_ekGrBQ/VqhBT0H5B_I/AAAAAAAAKHo/vZH-3Y_Jxl4/s1600/CZjDVmmUEAALI_4.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMYfn-HCE0ela-64txxdcUz_ShToyvoQhX9w&usqp=CAU',
    'https://cdn.pixabay.com/photo/2020/03/17/12/02/vietnam-4940070_960_720.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('List Photo'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Photos of Friends',
              ),
              Tab(
                icon: Icon(Icons.photo),
                text: 'Upload',
              ),
              Tab(
                icon: Icon(Icons.video_camera_back_outlined),
                text: 'Videos',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
                child: GridView.builder(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: _photosOfFriends.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PreviewImage(
                                  imageURL: _photosOfFriends[index]),
                            ),
                          );
                        },
                        child: CachedNetworkImage(
                          imageUrl: _photosOfFriends[index],
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) => Center(
                            child: CircularProgressIndicator(
                                value: downloadProgress.progress),
                          ),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      );
                    })),
            Container(
              child: Center(child: Text('Upload')),
            ),
            Container(
              child: Center(child: Text('Videos')),
            ),
          ],
        ),
      ),
    );
  }
}
