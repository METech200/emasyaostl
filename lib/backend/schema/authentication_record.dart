import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'authentication_record.g.dart';

abstract class AuthenticationRecord
    implements Built<AuthenticationRecord, AuthenticationRecordBuilder> {
  static Serializer<AuthenticationRecord> get serializer =>
      _$authenticationRecordSerializer;

  @BuiltValueField(wireName: 'Required')
  AuthenticatioRequiredStruct get required;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(AuthenticationRecordBuilder builder) =>
      builder..required = AuthenticatioRequiredStructBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Authentication')
          : FirebaseFirestore.instance.collectionGroup('Authentication');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Authentication').doc();

  static Stream<AuthenticationRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AuthenticationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AuthenticationRecord._();
  factory AuthenticationRecord(
          [void Function(AuthenticationRecordBuilder) updates]) =
      _$AuthenticationRecord;

  static AuthenticationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAuthenticationRecordData({
  AuthenticatioRequiredStruct? required,
}) {
  final firestoreData = serializers.toFirestore(
    AuthenticationRecord.serializer,
    AuthenticationRecord(
      (a) => a..required = AuthenticatioRequiredStructBuilder(),
    ),
  );

  // Handle nested data for "Required" field.
  addAuthenticatioRequiredStructData(firestoreData, required, 'Required');

  return firestoreData;
}
