import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CommentID" field.
  String? _commentID;
  String get commentID => _commentID ?? '';
  bool hasCommentID() => _commentID != null;

  // "DatreCreated" field.
  DateTime? _datreCreated;
  DateTime? get datreCreated => _datreCreated;
  bool hasDatreCreated() => _datreCreated != null;

  // "Content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "Likes" field.
  int? _likes;
  int get likes => _likes ?? 0;
  bool hasLikes() => _likes != null;

  // "LikedbyUser" field.
  List<DocumentReference>? _likedbyUser;
  List<DocumentReference> get likedbyUser => _likedbyUser ?? const [];
  bool hasLikedbyUser() => _likedbyUser != null;

  // "Post_ref" field.
  DocumentReference? _postRef;
  DocumentReference? get postRef => _postRef;
  bool hasPostRef() => _postRef != null;

  // "CreatedbyRef" field.
  DocumentReference? _createdbyRef;
  DocumentReference? get createdbyRef => _createdbyRef;
  bool hasCreatedbyRef() => _createdbyRef != null;

  void _initializeFields() {
    _commentID = snapshotData['CommentID'] as String?;
    _datreCreated = snapshotData['DatreCreated'] as DateTime?;
    _content = snapshotData['Content'] as String?;
    _likes = castToType<int>(snapshotData['Likes']);
    _likedbyUser = getDataList(snapshotData['LikedbyUser']);
    _postRef = snapshotData['Post_ref'] as DocumentReference?;
    _createdbyRef = snapshotData['CreatedbyRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Comments');

  static Stream<CommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsRecord.fromSnapshot(s));

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsRecord.fromSnapshot(s));

  static CommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsRecordData({
  String? commentID,
  DateTime? datreCreated,
  String? content,
  int? likes,
  DocumentReference? postRef,
  DocumentReference? createdbyRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CommentID': commentID,
      'DatreCreated': datreCreated,
      'Content': content,
      'Likes': likes,
      'Post_ref': postRef,
      'CreatedbyRef': createdbyRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsRecordDocumentEquality implements Equality<CommentsRecord> {
  const CommentsRecordDocumentEquality();

  @override
  bool equals(CommentsRecord? e1, CommentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.commentID == e2?.commentID &&
        e1?.datreCreated == e2?.datreCreated &&
        e1?.content == e2?.content &&
        e1?.likes == e2?.likes &&
        listEquality.equals(e1?.likedbyUser, e2?.likedbyUser) &&
        e1?.postRef == e2?.postRef &&
        e1?.createdbyRef == e2?.createdbyRef;
  }

  @override
  int hash(CommentsRecord? e) => const ListEquality().hash([
        e?.commentID,
        e?.datreCreated,
        e?.content,
        e?.likes,
        e?.likedbyUser,
        e?.postRef,
        e?.createdbyRef
      ]);

  @override
  bool isValidKey(Object? o) => o is CommentsRecord;
}
