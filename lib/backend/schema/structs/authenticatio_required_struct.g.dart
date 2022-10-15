// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticatio_required_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthenticatioRequiredStruct>
    _$authenticatioRequiredStructSerializer =
    new _$AuthenticatioRequiredStructSerializer();

class _$AuthenticatioRequiredStructSerializer
    implements StructuredSerializer<AuthenticatioRequiredStruct> {
  @override
  final Iterable<Type> types = const [
    AuthenticatioRequiredStruct,
    _$AuthenticatioRequiredStruct
  ];
  @override
  final String wireName = 'AuthenticatioRequiredStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AuthenticatioRequiredStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.required;
    if (value != null) {
      result
        ..add('Required')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  AuthenticatioRequiredStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthenticatioRequiredStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Required':
          result.required = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthenticatioRequiredStruct extends AuthenticatioRequiredStruct {
  @override
  final DocumentReference<Object?>? required;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$AuthenticatioRequiredStruct(
          [void Function(AuthenticatioRequiredStructBuilder)? updates]) =>
      (new AuthenticatioRequiredStructBuilder()..update(updates))._build();

  _$AuthenticatioRequiredStruct._(
      {this.required, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'AuthenticatioRequiredStruct', 'firestoreUtilData');
  }

  @override
  AuthenticatioRequiredStruct rebuild(
          void Function(AuthenticatioRequiredStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthenticatioRequiredStructBuilder toBuilder() =>
      new AuthenticatioRequiredStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthenticatioRequiredStruct &&
        required == other.required &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, required.hashCode), firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthenticatioRequiredStruct')
          ..add('required', required)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class AuthenticatioRequiredStructBuilder
    implements
        Builder<AuthenticatioRequiredStruct,
            AuthenticatioRequiredStructBuilder> {
  _$AuthenticatioRequiredStruct? _$v;

  DocumentReference<Object?>? _required;
  DocumentReference<Object?>? get required => _$this._required;
  set required(DocumentReference<Object?>? required) =>
      _$this._required = required;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  AuthenticatioRequiredStructBuilder() {
    AuthenticatioRequiredStruct._initializeBuilder(this);
  }

  AuthenticatioRequiredStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _required = $v.required;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthenticatioRequiredStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthenticatioRequiredStruct;
  }

  @override
  void update(void Function(AuthenticatioRequiredStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthenticatioRequiredStruct build() => _build();

  _$AuthenticatioRequiredStruct _build() {
    final _$result = _$v ??
        new _$AuthenticatioRequiredStruct._(
            required: required,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData,
                r'AuthenticatioRequiredStruct',
                'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
