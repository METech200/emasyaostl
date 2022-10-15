// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthenticationRecord> _$authenticationRecordSerializer =
    new _$AuthenticationRecordSerializer();

class _$AuthenticationRecordSerializer
    implements StructuredSerializer<AuthenticationRecord> {
  @override
  final Iterable<Type> types = const [
    AuthenticationRecord,
    _$AuthenticationRecord
  ];
  @override
  final String wireName = 'AuthenticationRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AuthenticationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'Required',
      serializers.serialize(object.required,
          specifiedType: const FullType(AuthenticatioRequiredStruct)),
    ];
    Object? value;
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  AuthenticationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthenticationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Required':
          result.required.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AuthenticatioRequiredStruct))!
              as AuthenticatioRequiredStruct);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthenticationRecord extends AuthenticationRecord {
  @override
  final AuthenticatioRequiredStruct required;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AuthenticationRecord(
          [void Function(AuthenticationRecordBuilder)? updates]) =>
      (new AuthenticationRecordBuilder()..update(updates))._build();

  _$AuthenticationRecord._({required this.required, this.ffRef}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        required, r'AuthenticationRecord', 'required');
  }

  @override
  AuthenticationRecord rebuild(
          void Function(AuthenticationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthenticationRecordBuilder toBuilder() =>
      new AuthenticationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthenticationRecord &&
        required == other.required &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, required.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthenticationRecord')
          ..add('required', required)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AuthenticationRecordBuilder
    implements Builder<AuthenticationRecord, AuthenticationRecordBuilder> {
  _$AuthenticationRecord? _$v;

  AuthenticatioRequiredStructBuilder? _required;
  AuthenticatioRequiredStructBuilder get required =>
      _$this._required ??= new AuthenticatioRequiredStructBuilder();
  set required(AuthenticatioRequiredStructBuilder? required) =>
      _$this._required = required;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AuthenticationRecordBuilder() {
    AuthenticationRecord._initializeBuilder(this);
  }

  AuthenticationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _required = $v.required.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthenticationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthenticationRecord;
  }

  @override
  void update(void Function(AuthenticationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthenticationRecord build() => _build();

  _$AuthenticationRecord _build() {
    _$AuthenticationRecord _$result;
    try {
      _$result = _$v ??
          new _$AuthenticationRecord._(
              required: required.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'required';
        required.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthenticationRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
