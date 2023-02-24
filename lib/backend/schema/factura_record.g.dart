// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'factura_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FacturaRecord> _$facturaRecordSerializer =
    new _$FacturaRecordSerializer();

class _$FacturaRecordSerializer implements StructuredSerializer<FacturaRecord> {
  @override
  final Iterable<Type> types = const [FacturaRecord, _$FacturaRecord];
  @override
  final String wireName = 'FacturaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FacturaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fecha;
    if (value != null) {
      result
        ..add('fecha')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.receptor;
    if (value != null) {
      result
        ..add('receptor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emisor;
    if (value != null) {
      result
        ..add('emisor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.detalle;
    if (value != null) {
      result
        ..add('detalle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  FacturaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FacturaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'fecha':
          result.fecha = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'receptor':
          result.receptor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'emisor':
          result.emisor = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'detalle':
          result.detalle.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$FacturaRecord extends FacturaRecord {
  @override
  final DateTime? fecha;
  @override
  final String? receptor;
  @override
  final DocumentReference<Object?>? emisor;
  @override
  final double? total;
  @override
  final BuiltList<DocumentReference<Object?>>? detalle;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FacturaRecord([void Function(FacturaRecordBuilder)? updates]) =>
      (new FacturaRecordBuilder()..update(updates))._build();

  _$FacturaRecord._(
      {this.fecha,
      this.receptor,
      this.emisor,
      this.total,
      this.detalle,
      this.ffRef})
      : super._();

  @override
  FacturaRecord rebuild(void Function(FacturaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FacturaRecordBuilder toBuilder() => new FacturaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FacturaRecord &&
        fecha == other.fecha &&
        receptor == other.receptor &&
        emisor == other.emisor &&
        total == other.total &&
        detalle == other.detalle &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, fecha.hashCode), receptor.hashCode),
                    emisor.hashCode),
                total.hashCode),
            detalle.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FacturaRecord')
          ..add('fecha', fecha)
          ..add('receptor', receptor)
          ..add('emisor', emisor)
          ..add('total', total)
          ..add('detalle', detalle)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FacturaRecordBuilder
    implements Builder<FacturaRecord, FacturaRecordBuilder> {
  _$FacturaRecord? _$v;

  DateTime? _fecha;
  DateTime? get fecha => _$this._fecha;
  set fecha(DateTime? fecha) => _$this._fecha = fecha;

  String? _receptor;
  String? get receptor => _$this._receptor;
  set receptor(String? receptor) => _$this._receptor = receptor;

  DocumentReference<Object?>? _emisor;
  DocumentReference<Object?>? get emisor => _$this._emisor;
  set emisor(DocumentReference<Object?>? emisor) => _$this._emisor = emisor;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  ListBuilder<DocumentReference<Object?>>? _detalle;
  ListBuilder<DocumentReference<Object?>> get detalle =>
      _$this._detalle ??= new ListBuilder<DocumentReference<Object?>>();
  set detalle(ListBuilder<DocumentReference<Object?>>? detalle) =>
      _$this._detalle = detalle;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FacturaRecordBuilder() {
    FacturaRecord._initializeBuilder(this);
  }

  FacturaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fecha = $v.fecha;
      _receptor = $v.receptor;
      _emisor = $v.emisor;
      _total = $v.total;
      _detalle = $v.detalle?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FacturaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FacturaRecord;
  }

  @override
  void update(void Function(FacturaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FacturaRecord build() => _build();

  _$FacturaRecord _build() {
    _$FacturaRecord _$result;
    try {
      _$result = _$v ??
          new _$FacturaRecord._(
              fecha: fecha,
              receptor: receptor,
              emisor: emisor,
              total: total,
              detalle: _detalle?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'detalle';
        _detalle?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FacturaRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
