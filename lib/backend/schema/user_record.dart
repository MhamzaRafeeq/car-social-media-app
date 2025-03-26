import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Firstname" field.
  String? _firstname;
  String get firstname => _firstname ?? '';
  bool hasFirstname() => _firstname != null;

  // "Lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  bool hasLastname() => _lastname != null;

  // "Zipcode" field.
  int? _zipcode;
  int get zipcode => _zipcode ?? 0;
  bool hasZipcode() => _zipcode != null;

  // "Usersbeingfollowed" field.
  List<DocumentReference>? _usersbeingfollowed;
  List<DocumentReference> get usersbeingfollowed =>
      _usersbeingfollowed ?? const [];
  bool hasUsersbeingfollowed() => _usersbeingfollowed != null;

  // "UserFollowingMe" field.
  List<DocumentReference>? _userFollowingMe;
  List<DocumentReference> get userFollowingMe => _userFollowingMe ?? const [];
  bool hasUserFollowingMe() => _userFollowingMe != null;

  // "IsAccountSuspended" field.
  bool? _isAccountSuspended;
  bool get isAccountSuspended => _isAccountSuspended ?? false;
  bool hasIsAccountSuspended() => _isAccountSuspended != null;

  // "IsAccountBanned" field.
  bool? _isAccountBanned;
  bool get isAccountBanned => _isAccountBanned ?? false;
  bool hasIsAccountBanned() => _isAccountBanned != null;

  // "IsAccountVerified" field.
  bool? _isAccountVerified;
  bool get isAccountVerified => _isAccountVerified ?? false;
  bool hasIsAccountVerified() => _isAccountVerified != null;

  // "Bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "BannerImage" field.
  String? _bannerImage;
  String get bannerImage => _bannerImage ?? '';
  bool hasBannerImage() => _bannerImage != null;

  // "Car" field.
  String? _car;
  String get car => _car ?? '';
  bool hasCar() => _car != null;

  // "votes" field.
  int? _votes;
  int get votes => _votes ?? 0;
  bool hasVotes() => _votes != null;

  // "votedByUsers" field.
  List<DocumentReference>? _votedByUsers;
  List<DocumentReference> get votedByUsers => _votedByUsers ?? const [];
  bool hasVotedByUsers() => _votedByUsers != null;

  // "Rank" field.
  int? _rank;
  int get rank => _rank ?? 0;
  bool hasRank() => _rank != null;

  // "votesInWeek" field.
  int? _votesInWeek;
  int get votesInWeek => _votesInWeek ?? 0;
  bool hasVotesInWeek() => _votesInWeek != null;

  // "rankInWeek" field.
  int? _rankInWeek;
  int get rankInWeek => _rankInWeek ?? 0;
  bool hasRankInWeek() => _rankInWeek != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "Country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "dateOfBirth" field.
  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _dateOfBirth;
  bool hasDateOfBirth() => _dateOfBirth != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _firstname = snapshotData['Firstname'] as String?;
    _lastname = snapshotData['Lastname'] as String?;
    _zipcode = castToType<int>(snapshotData['Zipcode']);
    _usersbeingfollowed = getDataList(snapshotData['Usersbeingfollowed']);
    _userFollowingMe = getDataList(snapshotData['UserFollowingMe']);
    _isAccountSuspended = snapshotData['IsAccountSuspended'] as bool?;
    _isAccountBanned = snapshotData['IsAccountBanned'] as bool?;
    _isAccountVerified = snapshotData['IsAccountVerified'] as bool?;
    _bio = snapshotData['Bio'] as String?;
    _bannerImage = snapshotData['BannerImage'] as String?;
    _car = snapshotData['Car'] as String?;
    _votes = castToType<int>(snapshotData['votes']);
    _votedByUsers = getDataList(snapshotData['votedByUsers']);
    _rank = castToType<int>(snapshotData['Rank']);
    _votesInWeek = castToType<int>(snapshotData['votesInWeek']);
    _rankInWeek = castToType<int>(snapshotData['rankInWeek']);
    _city = snapshotData['City'] as String?;
    _country = snapshotData['Country'] as String?;
    _dateOfBirth = snapshotData['dateOfBirth'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? firstname,
  String? lastname,
  int? zipcode,
  bool? isAccountSuspended,
  bool? isAccountBanned,
  bool? isAccountVerified,
  String? bio,
  String? bannerImage,
  String? car,
  int? votes,
  int? rank,
  int? votesInWeek,
  int? rankInWeek,
  String? city,
  String? country,
  DateTime? dateOfBirth,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'Firstname': firstname,
      'Lastname': lastname,
      'Zipcode': zipcode,
      'IsAccountSuspended': isAccountSuspended,
      'IsAccountBanned': isAccountBanned,
      'IsAccountVerified': isAccountVerified,
      'Bio': bio,
      'BannerImage': bannerImage,
      'Car': car,
      'votes': votes,
      'Rank': rank,
      'votesInWeek': votesInWeek,
      'rankInWeek': rankInWeek,
      'City': city,
      'Country': country,
      'dateOfBirth': dateOfBirth,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.firstname == e2?.firstname &&
        e1?.lastname == e2?.lastname &&
        e1?.zipcode == e2?.zipcode &&
        listEquality.equals(e1?.usersbeingfollowed, e2?.usersbeingfollowed) &&
        listEquality.equals(e1?.userFollowingMe, e2?.userFollowingMe) &&
        e1?.isAccountSuspended == e2?.isAccountSuspended &&
        e1?.isAccountBanned == e2?.isAccountBanned &&
        e1?.isAccountVerified == e2?.isAccountVerified &&
        e1?.bio == e2?.bio &&
        e1?.bannerImage == e2?.bannerImage &&
        e1?.car == e2?.car &&
        e1?.votes == e2?.votes &&
        listEquality.equals(e1?.votedByUsers, e2?.votedByUsers) &&
        e1?.rank == e2?.rank &&
        e1?.votesInWeek == e2?.votesInWeek &&
        e1?.rankInWeek == e2?.rankInWeek &&
        e1?.city == e2?.city &&
        e1?.country == e2?.country &&
        e1?.dateOfBirth == e2?.dateOfBirth;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.firstname,
        e?.lastname,
        e?.zipcode,
        e?.usersbeingfollowed,
        e?.userFollowingMe,
        e?.isAccountSuspended,
        e?.isAccountBanned,
        e?.isAccountVerified,
        e?.bio,
        e?.bannerImage,
        e?.car,
        e?.votes,
        e?.votedByUsers,
        e?.rank,
        e?.votesInWeek,
        e?.rankInWeek,
        e?.city,
        e?.country,
        e?.dateOfBirth
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
