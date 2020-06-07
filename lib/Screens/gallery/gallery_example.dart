import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mainappstore1/Screens/configuration.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import 'gallery_example_item.dart';

class GalleryExample extends StatefulWidget {
  @override
  _GalleryExampleState createState() => _GalleryExampleState();
}

class _GalleryExampleState extends State<GalleryExample> {
  bool verticalGallery = false;

  @override
  Widget build(BuildContext context) {
    /*  return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GalleryExampleItemThumbnail(
                        galleryExampleItem: galleryItems[0],
                        onTap: () {
                          open(context, 0);
                        },
                      ),
                      GalleryExampleItemThumbnail(
                        galleryExampleItem: galleryItems[1],
                        onTap: () {
                          open(context, 1);
                        },
                      ),
                      GalleryExampleItemThumbnail(
                        galleryExampleItem: galleryItems[2],
                        onTap: () {
                          open(context, 2);
                        },
                      ),
                      GalleryExampleItemThumbnail(
                        galleryExampleItem: galleryItems[3],
                        onTap: () {
                          open(context, 3);
                        },
                      ),
                      GalleryExampleItemThumbnail(
                        galleryExampleItem: galleryItems[4],
                        onTap: () {
                          open(context, 4);
                        },
                      ),
                      GalleryExampleItemThumbnail(
                        galleryExampleItem: galleryItems[5],
                        onTap: () {
                          open(context, 5);
                        },
                      ),
                      GalleryExampleItemThumbnail(
                        galleryExampleItem: galleryItems[6],
                        onTap: () {
                          open(context, 6);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );*/
    return Container(
      padding: EdgeInsets.all(20.0),
      height: double.infinity,
      //color: Color.fromRGBO(251, 233, 32, 0.5),
      color: Colors.grey.withOpacity(0.3).withBlue(84),
      

      child: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            color: Colors.white.withOpacity(0.9),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: GalleryExampleItemThumbnail(
                    galleryExampleItem: galleryItems[0],
                    onTap: () {
                      open(context, 0);
                    },
                  ),
                ),
                Container(
                  color: Color.fromRGBO(165, 186, 180,0.8),
                  width: double.infinity,
                  height: 30.0,
                  padding: EdgeInsets.all(1.0),
                  margin: EdgeInsets.only(bottom: 1.0),
                  child: Center(child: Text('نقشه خوانی',textDirection: null,style: TextStyle(color: Colors.black87),)),

                )
              ],
            ),
          ),
          Container(
            color: Colors.white.withOpacity(0.9),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: GalleryExampleItemThumbnail(
                    galleryExampleItem: galleryItems[1],
                    onTap: () {
                      open(context, 1);
                    },
                  ),
                ),
                Container(
                  color: Color.fromRGBO(165, 186, 180,0.8),
                  width: double.infinity,
                  height: 30.0,
                  padding: EdgeInsets.all(1.0),
                  margin: EdgeInsets.only(bottom: 1.0),
                  child: Center(child: Text('نقشه خوانی',textDirection: null,style: TextStyle(color: Colors.black87),)),
                  
                )
              ],
            ),
          ),
          Container(
            color: Colors.white.withOpacity(0.9),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: GalleryExampleItemThumbnail(
                    galleryExampleItem: galleryItems[2],
                    onTap: () {
                      open(context, 2);
                    },
                  ),
                ),
                Container(
                  color: Color.fromRGBO(165, 186, 180,0.8),
                  width: double.infinity,
                  height: 30.0,
                  padding: EdgeInsets.all(1.0),
                  margin: EdgeInsets.only(bottom: 1.0),
                  child: Center(child: Text('نقشه خوانی',textDirection: null,style: TextStyle(color: Colors.black87),)),

                )
              ],
            ),
          ),
          Container(
            color: Colors.white.withOpacity(0.9),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: GalleryExampleItemThumbnail(
                    galleryExampleItem: galleryItems[3],
                    onTap: () {
                      open(context, 3);
                    },
                  ),
                ),
                Container(
                  color: Color.fromRGBO(165, 186, 180,0.8),
                  width: double.infinity,
                  height: 30.0,
                  padding: EdgeInsets.all(1.0),
                  margin: EdgeInsets.only(bottom: 1.0),
                  child: Center(child: Text('نقشه خوانی',textDirection: null,style: TextStyle(color: Colors.black87),)),

                )
              ],
            ),
          ),
          Container(
            color: Colors.white.withOpacity(0.9),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: GalleryExampleItemThumbnail(
                    galleryExampleItem: galleryItems[4],
                    onTap: () {
                      open(context, 4);
                    },
                  ),
                ),
                Container(
                  color: Color.fromRGBO(165, 186, 180,0.8),
                  width: double.infinity,
                  height: 30.0,
                  padding: EdgeInsets.all(1.0),
                  margin: EdgeInsets.only(bottom: 1.0),
                  child: Center(child: Text('نقشه خوانی',textDirection: null,style: TextStyle(color: Colors.black87),)),

                )
              ],
            ),
          ),
          Container(
            color: Colors.white.withOpacity(0.9),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: GalleryExampleItemThumbnail(
                    galleryExampleItem: galleryItems[5],
                    onTap: () {
                      open(context, 5);
                    },
                  ),
                ),
                Container(
                  color: Color.fromRGBO(165, 186, 180,0.8),
                  width: double.infinity,
                  height: 30.0,
                  padding: EdgeInsets.all(1.0),
                  margin: EdgeInsets.only(bottom: 1.0),
                  child: Center(child: Text('نقشه خوانی',textDirection: null,style: TextStyle(color: Colors.black87),)),

                )
              ],
            ),
          ),
        ],
      ),
    );
  }


  void open(BuildContext context, final int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GalleryPhotoViewWrapper(
          galleryItems: galleryItems,
          backgroundDecoration: const BoxDecoration(
            color: Colors.black12,
          ),
          initialIndex: index,
          /*scrollDirection: verticalGallery ? Axis.vertical : Axis.horizontal,*/
        ),
      ),
    );
  }
}

class GalleryPhotoViewWrapper extends StatefulWidget {
  GalleryPhotoViewWrapper({
    this.loadingBuilder,
    this.backgroundDecoration,
    this.minScale,
    this.maxScale,
    this.initialIndex,
    @required this.galleryItems,
    this.scrollDirection = Axis.horizontal,
  }) : pageController = PageController(initialPage: initialIndex);

  final LoadingBuilder loadingBuilder;
  final Decoration backgroundDecoration;
  final dynamic minScale;
  final dynamic maxScale;
  final int initialIndex;
  final PageController pageController;
  final List<GalleryExampleItem> galleryItems;
  final Axis scrollDirection;

  @override
  State<StatefulWidget> createState() {
    return _GalleryPhotoViewWrapperState();
  }
}

class _GalleryPhotoViewWrapperState extends State<GalleryPhotoViewWrapper> {
  int currentIndex;

  @override
  void initState() {
    currentIndex = widget.initialIndex;
    super.initState();
  }

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        /*alignment: Alignment.center,
        margin: EdgeInsets.only(top: 100.0),*/
        decoration: widget.backgroundDecoration,
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            PhotoViewGallery.builder(
              scrollPhysics: const BouncingScrollPhysics(),
              builder: _buildItem,
              itemCount: widget.galleryItems.length,
              loadingBuilder: widget.loadingBuilder,
              backgroundDecoration: widget.backgroundDecoration,
              pageController: widget.pageController,
              onPageChanged: onPageChanged,
              scrollDirection: widget.scrollDirection,
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Image ${currentIndex + 1}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  decoration: null,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  PhotoViewGalleryPageOptions _buildItem(BuildContext context, int index) {
    final GalleryExampleItem item = widget.galleryItems[index];
    return PhotoViewGalleryPageOptions(
            imageProvider: AssetImage(item.resource),
            initialScale: PhotoViewComputedScale.contained,
           /* minScale: PhotoViewComputedScale.contained * (0.5 + index / 10),
            maxScale: PhotoViewComputedScale.covered * 1.1,*/
            heroAttributes: PhotoViewHeroAttributes(tag: item.id),
          );
  }
}
