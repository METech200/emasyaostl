// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectsRecord> _$projectsRecordSerializer =
    new _$ProjectsRecordSerializer();

class _$ProjectsRecordSerializer
    implements StructuredSerializer<ProjectsRecord> {
  @override
  final Iterable<Type> types = const [ProjectsRecord, _$ProjectsRecord];
  @override
  final String wireName = 'ProjectsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProjectsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('imageUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ref;
    if (value != null) {
      result
        ..add('ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.betAmmount;
    if (value != null) {
      result
        ..add('Bet-Ammount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.betNumber;
    if (value != null) {
      result
        ..add('Bet-Number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contactNumber;
    if (value != null) {
      result
        ..add('ContactNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateAndTime;
    if (value != null) {
      result
        ..add('DateAndTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('Email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('Location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.targetRumble;
    if (value != null) {
      result
        ..add('TargetRumble')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
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
  ProjectsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'ref':
          result.ref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Bet-Ammount':
          result.betAmmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Bet-Number':
          result.betNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ContactNumber':
          result.contactNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DateAndTime':
          result.dateAndTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'TargetRumble':
          result.targetRumble.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$ProjectsRecord extends ProjectsRecord {
  @override
  final String? name;
  @override
  final String? imageUrl;
  @override
  final DateTime? createdAt;
  @override
  final DocumentReference<Object?>? ref;
  @override
  final String? betAmmount;
  @override
  final String? betNumber;
  @override
  final String? contactNumber;
  @override
  final String? dateAndTime;
  @override
  final String? email;
  @override
  final String? location;
  @override
  final BuiltList<String>? targetRumble;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProjectsRecord([void Function(ProjectsRecordBuilder)? updates]) =>
      (new ProjectsRecordBuilder()..update(updates))._build();

  _$ProjectsRecord._(
      {this.name,
      this.imageUrl,
      this.createdAt,
      this.ref,
      this.betAmmount,
      this.betNumber,
      this.contactNumber,
      this.dateAndTime,
      this.email,
      this.location,
      this.targetRumble,
      this.ffRef})
      : super._();

  @override
  ProjectsRecord rebuild(void Function(ProjectsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectsRecordBuilder toBuilder() =>
      new ProjectsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectsRecord &&
        name == other.name &&
        imageUrl == other.imageUrl &&
        createdAt == other.createdAt &&
        ref == other.ref &&
        betAmmount == other.betAmmount &&
        betNumber == other.betNumber &&
        contactNumber == other.contactNumber &&
        dateAndTime == other.dateAndTime &&
        email == other.email &&
        location == other.location &&
        targetRumble == other.targetRumble &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, name.hashCode),
                                                imageUrl.hashCode),
                                            createdAt.hashCode),
                                        ref.hashCode),
                                    betAmmount.hashCode),
                                betNumber.hashCode),
                            contactNumber.hashCode),
                        dateAndTime.hashCode),
                    email.hashCode),
                location.hashCode),
            targetRumble.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectsRecord')
          ..add('name', name)
          ..add('imageUrl', imageUrl)
          ..add('createdAt', createdAt)
          ..add('ref', ref)
          ..add('betAmmount', betAmmount)
          ..add('betNumber', betNumber)
          ..add('contactNumber', contactNumber)
          ..add('dateAndTime', dateAndTime)
          ..add('email', email)
          ..add('location', location)
          ..add('targetRumble', targetRumble)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProjectsRecordBuilder
    implements Builder<ProjectsRecord, ProjectsRecordBuilder> {
  _$ProjectsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DocumentReference<Object?>? _ref;
  DocumentReference<Object?>? get ref => _$this._ref;
  set ref(DocumentReference<Object?>? ref) => _$this._ref = ref;

  String? _betAmmount;
  String? get betAmmount => _$this._betAmmount;
  set betAmmount(String? betAmmount) => _$this._betAmmount = betAmmount;

  String? _betNumber;
  String? get betNumber => _$this._betNumber;
  set betNumber(String? betNumber) => _$this._betNumber = betNumber;

  String? _contactNumber;
  String? get contactNumber => _$this._contactNumber;
  set contactNumber(String? contactNumber) =>
      _$this._contactNumber = contactNumber;

  String? _dateAndTime;
  String? get dateAndTime => _$this._dateAndTime;
  set dateAndTime(String? dateAndTime) => _$this._dateAndTime = dateAndTime;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  ListBuilder<String>? _targetRumble;
  ListBuilder<String> get targetRumble =>
      _$this._targetRumble ??= new ListBuilder<String>();
  set targetRumble(ListBuilder<String>? targetRumble) =>
      _$this._targetRumble = targetRumble;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProjectsRecordBuilder() {
    ProjectsRecord._initializeBuilder(this);
  }

  ProjectsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _imageUrl = $v.imageUrl;
      _createdAt = $v.createdAt;
      _ref = $v.ref;
      _betAmmount = $v.betAmmount;
      _betNumber = $v.betNumber;
      _contactNumber = $v.contactNumber;
      _dateAndTime = $v.dateAndTime;
      _email = $v.email;
      _location = $v.location;
      _targetRumble = $v.targetRumble?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectsRecord;
  }

  @override
  void update(void Function(ProjectsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectsRecord build() => _build();

  _$ProjectsRecord _build() {
    _$ProjectsRecord _$result;
    try {
      _$result = _$v ??
          new _$ProjectsRecord._(
              name: name,
              imageUrl: imageUrl,
              createdAt: createdAt,
              ref: ref,
              betAmmount: betAmmount,
              betNumber: betNumber,
              contactNumber: contactNumber,
              dateAndTime: dateAndTime,
              email: email,
              location: location,
              targetRumble: _targetRumble?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targetRumble';
        _targetRumble?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProjectsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
