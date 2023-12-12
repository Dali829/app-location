import 'package:min_it/features/pilote/domain/entities/pilote_entities.dart';

abstract class PiloteRepository {
  Future<List<Pilote>> readJson();
}
