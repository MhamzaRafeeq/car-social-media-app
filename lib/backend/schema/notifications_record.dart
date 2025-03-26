import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationsRecord extends FirestoreRecord {
  NotificationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "DateCreated" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  // "created_byUser" field.
  DocumentReference? _createdByUser;
  DocumentReference? get createdByUser => _createdByUser;
  bool hasCreatedByUser() => _createdByUser != null;

  // "post_ref" field.
  DocumentReference? _postRef;
  DocumentReference? get postRef => _postRef;
  bool hasPostRef() => _postRef != null;

  // "notificationMessage" field.
  String? _notificationMessage;
  String get notificationMessage => _notificationMessage ?? '';
  bool hasNotificationMessage() => _notificationMessage != null;

  // "notifiedToUser" field.
  DocumentReference? _notifiedToUser;
  DocumentReference? get notifiedToUser => _notifiedToUser;
  bool hasNotifiedToUser() => _notifiedToUser != null;

  void _initializeFields() {
    _dateCreated = snapshotData['DateCreated'] as DateTime?;
    _createdByUser = snapshotData['created_byUser'] as DocumentReference?;
    _postRef = snapshotData['post_ref'] as DocumentReference?;
    _notificationMessage = snapshotData['notificationMessage'] as String?;
    _notifiedToUser = snapshotData['notifiedToUser'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationsRecord.fromSnapshot(s));

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationsRecord.fromSnapshot(s));

  static NotificationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationsRecordData({
  DateTime? dateCreated,
  DocumentReference? createdByUser,
  DocumentReference? postRef,
  String? notificationMessage,
  DocumentReference? notifiedToUser,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'DateCreated': dateCreated,
      'created_byUser': createdByUser,
      'post_ref': postRef,
      'notificationMessage': notificationMessage,
      'notifiedToUser': notifiedToUser,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationsRecordDocumentEquality
    implements Equality<NotificationsRecord> {
  const NotificationsRecordDocumentEquality();

  @override
  bool equals(NotificationsRecord? e1, NotificationsRecord? e2) {
    return e1?.dateCreated == e2?.dateCreated &&
        e1?.createdByUser == e2?.createdByUser &&
        e1?.postRef == e2?.postRef &&
        e1?.notificationMessage == e2?.notificationMessage &&
        e1?.notifiedToUser == e2?.notifiedToUser;
  }

  @override
  int hash(NotificationsRecord? e) => const ListEquality().hash([
        e?.dateCreated,
        e?.createdByUser,
        e?.postRef,
        e?.notificationMessage,
        e?.notifiedToUser
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationsRecord;
}
