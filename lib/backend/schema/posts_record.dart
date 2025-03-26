import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostsRecord extends FirestoreRecord {
  PostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "PostID" field.
  String? _postID;
  String get postID => _postID ?? '';
  bool hasPostID() => _postID != null;

  // "DateCreated" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  // "PostedBy" field.
  DocumentReference? _postedBy;
  DocumentReference? get postedBy => _postedBy;
  bool hasPostedBy() => _postedBy != null;

  // "Content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "Photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "Likes" field.
  int? _likes;
  int get likes => _likes ?? 0;
  bool hasLikes() => _likes != null;

  // "LikedByUsers" field.
  List<DocumentReference>? _likedByUsers;
  List<DocumentReference> get likedByUsers => _likedByUsers ?? const [];
  bool hasLikedByUsers() => _likedByUsers != null;

  // "CommentREF" field.
  List<DocumentReference>? _commentREF;
  List<DocumentReference> get commentREF => _commentREF ?? const [];
  bool hasCommentREF() => _commentREF != null;

  // "Comments" field.
  int? _comments;
  int get comments => _comments ?? 0;
  bool hasComments() => _comments != null;

  // "AdditionalPhotos" field.
  List<String>? _additionalPhotos;
  List<String> get additionalPhotos => _additionalPhotos ?? const [];
  bool hasAdditionalPhotos() => _additionalPhotos != null;

  // "PostTitle" field.
  String? _postTitle;
  String get postTitle => _postTitle ?? '';
  bool hasPostTitle() => _postTitle != null;

  // "vote" field.
  int? _vote;
  int get vote => _vote ?? 0;
  bool hasVote() => _vote != null;

  // "vetedByUser" field.
  List<DocumentReference>? _vetedByUser;
  List<DocumentReference> get vetedByUser => _vetedByUser ?? const [];
  bool hasVetedByUser() => _vetedByUser != null;

  // "voteInWeek" field.
  int? _voteInWeek;
  int get voteInWeek => _voteInWeek ?? 0;
  bool hasVoteInWeek() => _voteInWeek != null;

  void _initializeFields() {
    _postID = snapshotData['PostID'] as String?;
    _dateCreated = snapshotData['DateCreated'] as DateTime?;
    _postedBy = snapshotData['PostedBy'] as DocumentReference?;
    _content = snapshotData['Content'] as String?;
    _photo = snapshotData['Photo'] as String?;
    _likes = castToType<int>(snapshotData['Likes']);
    _likedByUsers = getDataList(snapshotData['LikedByUsers']);
    _commentREF = getDataList(snapshotData['CommentREF']);
    _comments = castToType<int>(snapshotData['Comments']);
    _additionalPhotos = getDataList(snapshotData['AdditionalPhotos']);
    _postTitle = snapshotData['PostTitle'] as String?;
    _vote = castToType<int>(snapshotData['vote']);
    _vetedByUser = getDataList(snapshotData['vetedByUser']);
    _voteInWeek = castToType<int>(snapshotData['voteInWeek']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostsRecord.fromSnapshot(s));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostsRecord.fromSnapshot(s));

  static PostsRecord fromSnapshot(DocumentSnapshot snapshot) => PostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostsRecordData({
  String? postID,
  DateTime? dateCreated,
  DocumentReference? postedBy,
  String? content,
  String? photo,
  int? likes,
  int? comments,
  String? postTitle,
  int? vote,
  int? voteInWeek,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'PostID': postID,
      'DateCreated': dateCreated,
      'PostedBy': postedBy,
      'Content': content,
      'Photo': photo,
      'Likes': likes,
      'Comments': comments,
      'PostTitle': postTitle,
      'vote': vote,
      'voteInWeek': voteInWeek,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostsRecordDocumentEquality implements Equality<PostsRecord> {
  const PostsRecordDocumentEquality();

  @override
  bool equals(PostsRecord? e1, PostsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.postID == e2?.postID &&
        e1?.dateCreated == e2?.dateCreated &&
        e1?.postedBy == e2?.postedBy &&
        e1?.content == e2?.content &&
        e1?.photo == e2?.photo &&
        e1?.likes == e2?.likes &&
        listEquality.equals(e1?.likedByUsers, e2?.likedByUsers) &&
        listEquality.equals(e1?.commentREF, e2?.commentREF) &&
        e1?.comments == e2?.comments &&
        listEquality.equals(e1?.additionalPhotos, e2?.additionalPhotos) &&
        e1?.postTitle == e2?.postTitle &&
        e1?.vote == e2?.vote &&
        listEquality.equals(e1?.vetedByUser, e2?.vetedByUser) &&
        e1?.voteInWeek == e2?.voteInWeek;
  }

  @override
  int hash(PostsRecord? e) => const ListEquality().hash([
        e?.postID,
        e?.dateCreated,
        e?.postedBy,
        e?.content,
        e?.photo,
        e?.likes,
        e?.likedByUsers,
        e?.commentREF,
        e?.comments,
        e?.additionalPhotos,
        e?.postTitle,
        e?.vote,
        e?.vetedByUser,
        e?.voteInWeek
      ]);

  @override
  bool isValidKey(Object? o) => o is PostsRecord;
}
