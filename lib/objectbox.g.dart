// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'Models/BD.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 7053869899012760236),
      name: 'Students',
      lastPropertyId: const IdUid(7, 4609991831866371756),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6119564519404590695),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4644533595594259818),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 2375479209113812605),
            name: 'age',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 6995318923906911124),
            name: 'dateofbirth',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 1048384340300023877),
            name: 'hobbits',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 4609991831866371756),
            name: 'descriptions',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(1, 7053869899012760236),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [7260937482832547074],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    Students: EntityDefinition<Students>(
        model: _entities[0],
        toOneRelations: (Students object) => [],
        toManyRelations: (Students object) => {},
        getId: (Students object) => object.id,
        setId: (Students object, int id) {
          object.id = id;
        },
        objectToFB: (Students object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          final dateofbirthOffset = fbb.writeString(object.dateofbirth);
          final hobbitsOffset = fbb.writeString(object.hobbits);
          final descriptionsOffset = fbb.writeString(object.descriptions);
          fbb.startTable(8);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.addInt64(3, object.age);
          fbb.addOffset(4, dateofbirthOffset);
          fbb.addOffset(5, hobbitsOffset);
          fbb.addOffset(6, descriptionsOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Students(
              name: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              age: const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0),
              dateofbirth: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 12, ''),
              hobbits: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 14, ''),
              descriptions: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 16, ''))
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [Students] entity fields to define ObjectBox queries.
class Students_ {
  /// see [Students.id]
  static final id = QueryIntegerProperty<Students>(_entities[0].properties[0]);

  /// see [Students.name]
  static final name = QueryStringProperty<Students>(_entities[0].properties[1]);

  /// see [Students.age]
  static final age = QueryIntegerProperty<Students>(_entities[0].properties[2]);

  /// see [Students.dateofbirth]
  static final dateofbirth =
      QueryStringProperty<Students>(_entities[0].properties[3]);

  /// see [Students.hobbits]
  static final hobbits =
      QueryStringProperty<Students>(_entities[0].properties[4]);

  /// see [Students.descriptions]
  static final descriptions =
      QueryStringProperty<Students>(_entities[0].properties[5]);
}
