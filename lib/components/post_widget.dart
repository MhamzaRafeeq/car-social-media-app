import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'post_model.dart';
export 'post_model.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({
    super.key,
    this.photos,
    this.postTitle,
    this.userName,
    this.userImage,
    this.likes,
    this.comments,
    this.stars,
    required this.goToComments,
    required this.postDocRef,
  });

  final List<String>? photos;
  final String? postTitle;
  final String? userName;
  final String? userImage;
  final String? likes;
  final String? comments;
  final String? stars;
  final Future Function()? goToComments;
  final DocumentReference? postDocRef;

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  late PostModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
      child: StreamBuilder<PostsRecord>(
        stream: PostsRecord.getDocument(widget.postDocRef!),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            );
          }

          final containerPostsRecord = snapshot.data!;

          return Container(
            width: 320.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0x67FFFFFF), Color(0x18C9C0C0)],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
              borderRadius: BorderRadius.circular(40.0),
              border: Border.all(
                color: Color(0xFF676767),
                width: 3.0,
              ),
            ),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.82,
                          height: 370.0,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x7B000000),
                                offset: Offset(
                                  0.0,
                                  4.0,
                                ),
                                spreadRadius: 0.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(40.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 1.0,
                            ),
                          ),
                          child: Builder(
                            builder: (context) {
                              final photos = containerPostsRecord
                                  .additionalPhotos
                                  .toList();

                              return Container(
                                width: double.infinity,
                                height: 200.0,
                                child: CarouselSlider.builder(
                                  itemCount: photos.length,
                                  itemBuilder: (context, photosIndex, _) {
                                    final photosItem = photos[photosIndex];
                                    return ClipRRect(
                                      borderRadius: BorderRadius.circular(40.0),
                                      child: Image.network(
                                        valueOrDefault<String>(
                                          photosItem,
                                          'https://www.shutterstock.com/image-vector/gallery-icon-add-photo-symbol-260nw-2018395820.jpg',
                                        ),
                                        width: 300.0,
                                        height: 300.0,
                                        fit: BoxFit.cover,
                                      ),
                                    );
                                  },
                                  carouselController:
                                      _model.carouselController ??=
                                          CarouselSliderController(),
                                  options: CarouselOptions(
                                    initialPage:
                                        max(0, min(1, photos.length - 1)),
                                    viewportFraction: 1.0,
                                    disableCenter: true,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.25,
                                    enableInfiniteScroll: false,
                                    scrollDirection: Axis.horizontal,
                                    autoPlay: false,
                                    onPageChanged: (index, _) =>
                                        _model.carouselCurrentIndex = index,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 47.0,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 24.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                4.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFE1E1E1),
                              Color(0xFFE1E1E1),
                              Color(0xFFABABAB)
                            ],
                            stops: [0.0, 1.0, 1.0],
                            begin: AlignmentDirectional(0.0, -1.0),
                            end: AlignmentDirectional(0, 1.0),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  containerPostsRecord.postTitle,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Text(
                                  '@${widget.userName}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        fontSize: 10.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                            Container(
                              width: 60.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: 58.0,
                                height: 58.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  widget.userImage!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 93.0,
                            height: 37.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF40404),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x81000000),
                                  offset: Offset(
                                    0.0,
                                    4.0,
                                  ),
                                  spreadRadius: 0.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                if (containerPostsRecord.likedByUsers
                                    .contains(currentUserReference))
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await widget.postDocRef!.update({
                                        ...mapToFirestore(
                                          {
                                            'Likes': FieldValue.increment(-(1)),
                                            'LikedByUsers':
                                                FieldValue.arrayRemove(
                                                    [currentUserReference]),
                                          },
                                        ),
                                      });
                                    },
                                    child: Icon(
                                      Icons.favorite,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 33.0,
                                    ),
                                  ),
                                if (!containerPostsRecord.likedByUsers
                                    .contains(currentUserReference))
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await widget.postDocRef!.update({
                                        ...mapToFirestore(
                                          {
                                            'Likes': FieldValue.increment(1),
                                            'LikedByUsers':
                                                FieldValue.arrayUnion(
                                                    [currentUserReference]),
                                          },
                                        ),
                                      });
                                    },
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 33.0,
                                    ),
                                  ),
                                Text(
                                  widget.likes!,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 10.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ]
                                  .addToStart(SizedBox(width: 3.0))
                                  .addToEnd(SizedBox(width: 8.0)),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await widget.goToComments?.call();
                            },
                            child: Container(
                              width: 93.0,
                              height: 37.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x81000000),
                                    offset: Offset(
                                      0.0,
                                      4.0,
                                    ),
                                    spreadRadius: 0.0,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.solidComment,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 25.0,
                                  ),
                                  Text(
                                    widget.comments!,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ]
                                    .addToStart(SizedBox(width: 3.0))
                                    .addToEnd(SizedBox(width: 8.0)),
                              ),
                            ),
                          ),
                          Container(
                            width: 93.0,
                            height: 37.0,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x81000000),
                                  offset: Offset(
                                    0.0,
                                    4.0,
                                  ),
                                  spreadRadius: 0.0,
                                )
                              ],
                              gradient: LinearGradient(
                                colors: [Color(0xFFEB00FF), Color(0xFFAD00FF)],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(0.0, -1.0),
                                end: AlignmentDirectional(0, 1.0),
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                if (containerPostsRecord.vetedByUser
                                    .contains(currentUserReference))
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await widget.postDocRef!.update({
                                        ...mapToFirestore(
                                          {
                                            'vote': FieldValue.increment(-(1)),
                                            'vetedByUser':
                                                FieldValue.arrayRemove(
                                                    [currentUserReference]),
                                          },
                                        ),
                                      });
                                    },
                                    child: Icon(
                                      Icons.star_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 25.0,
                                    ),
                                  ),
                                if (!containerPostsRecord.vetedByUser
                                    .contains(currentUserReference))
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await widget.postDocRef!.update({
                                        ...mapToFirestore(
                                          {
                                            'vote': FieldValue.increment(1),
                                            'vetedByUser':
                                                FieldValue.arrayUnion(
                                                    [currentUserReference]),
                                          },
                                        ),
                                      });
                                    },
                                    child: Icon(
                                      Icons.star_outline,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 25.0,
                                    ),
                                  ),
                                Text(
                                  widget.stars!,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 10.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ]
                                  .addToStart(SizedBox(width: 3.0))
                                  .addToEnd(SizedBox(width: 8.0)),
                            ),
                          ),
                        ],
                      ),
                    ]
                        .divide(SizedBox(height: 15.0))
                        .addToEnd(SizedBox(height: 15.0)),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
