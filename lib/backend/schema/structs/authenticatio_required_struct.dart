import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'authenticatio_required_struct.g.dart';

abstract class AuthenticatioRequiredStruct
    implements
        Built<AuthenticatioRequiredStruct, AuthenticatioRequiredStructBuilder> {
  static Serializer<AuthenticatioRequiredStruct> get serializer =>
      _$authenticatioRequiredStructSerializer;

  @BuiltValueField(wireName: 'Required')
  DocumentReference? get required;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(AuthenticatioRequiredStructBuilder builder) =>
      builder..firestoreUtilData = FirestoreUtilData();

  AuthenticatioRequiredStruct._();
  factory AuthenticatioRequiredStruct(
          [void Function(AuthenticatioRequiredStructBuilder) updates]) =
      _$AuthenticatioRequiredStruct;
}

AuthenticatioRequiredStruct createAuthenticatioRequiredStruct({
  DocumentReference? required,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AuthenticatioRequiredStruct(
      (a) => a
        ..required = required
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

AuthenticatioRequiredStruct? updateAuthenticatioRequiredStruct(
  AuthenticatioRequiredStruct? authenticatioRequired, {
  bool clearUnsetFields = true,
}) =>
    authenticatioRequired != null
        ? (authenticatioRequired.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addAuthenticatioRequiredStructData(
  Map<String, dynamic> firestoreData,
  AuthenticatioRequiredStruct? authenticatioRequired,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (authenticatioRequired == null) {
    return;
  }
  if (authenticatioRequired.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue &&
      authenticatioRequired.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final authenticatioRequiredData = getAuthenticatioRequiredFirestoreData(
      authenticatioRequired, forFieldValue);
  final nestedData =
      authenticatioRequiredData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = authenticatioRequired.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getAuthenticatioRequiredFirestoreData(
  AuthenticatioRequiredStruct? authenticatioRequired, [
  bool forFieldValue = false,
]) {
  if (authenticatioRequired == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(
      AuthenticatioRequiredStruct.serializer, authenticatioRequired);

  // Add any Firestore field values
  authenticatioRequired.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAuthenticatioRequiredListFirestoreData(
  List<AuthenticatioRequiredStruct>? authenticatioRequireds,
) =>
    authenticatioRequireds
        ?.map((a) => getAuthenticatioRequiredFirestoreData(a, true))
        .toList() ??
    [];
