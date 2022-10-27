import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'projects_record.g.dart';

abstract class ProjectsRecord
    implements Built<ProjectsRecord, ProjectsRecordBuilder> {
  static Serializer<ProjectsRecord> get serializer =>
      _$projectsRecordSerializer;

  String? get name;

  String? get imageUrl;

  DateTime? get createdAt;

  DocumentReference? get ref;

  @BuiltValueField(wireName: 'Bet-Ammount')
  String? get betAmmount;

  @BuiltValueField(wireName: 'Bet-Number')
  String? get betNumber;

  @BuiltValueField(wireName: 'ContactNumber')
  String? get contactNumber;

  @BuiltValueField(wireName: 'DateAndTime')
  String? get dateAndTime;

  @BuiltValueField(wireName: 'Email')
  String? get email;

  @BuiltValueField(wireName: 'Location')
  String? get location;

  @BuiltValueField(wireName: 'TargetRumble')
  BuiltList<String>? get targetRumble;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProjectsRecordBuilder builder) => builder
    ..name = ''
    ..imageUrl = ''
    ..betAmmount = ''
    ..betNumber = ''
    ..contactNumber = ''
    ..dateAndTime = ''
    ..email = ''
    ..location = ''
    ..targetRumble = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('projects');

  static Stream<ProjectsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProjectsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProjectsRecord._();
  factory ProjectsRecord([void Function(ProjectsRecordBuilder) updates]) =
      _$ProjectsRecord;

  static ProjectsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProjectsRecordData({
  String? name,
  String? imageUrl,
  DateTime? createdAt,
  DocumentReference? ref,
  String? betAmmount,
  String? betNumber,
  String? contactNumber,
  String? dateAndTime,
  String? email,
  String? location,
}) {
  final firestoreData = serializers.toFirestore(
    ProjectsRecord.serializer,
    ProjectsRecord(
      (p) => p
        ..name = name
        ..imageUrl = imageUrl
        ..createdAt = createdAt
        ..ref = ref
        ..betAmmount = betAmmount
        ..betNumber = betNumber
        ..contactNumber = contactNumber
        ..dateAndTime = dateAndTime
        ..email = email
        ..location = location
        ..targetRumble = null,
    ),
  );

  return firestoreData;
}
