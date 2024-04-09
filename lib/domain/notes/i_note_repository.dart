import 'package:dartz/dartz.dart';
import 'package:ddd/domain/notes/note_failure.dart';
import 'package:kt_dart/kt.dart';

import 'note.dart';

abstract class INoteRepository {
  Stream<Either<NoteFailure, KtList<Note>>> watchAll();
  Stream<Either<NoteFailure, KtList<Note>>> watchUnCompleted();
  Future<Either<NoteFailure, Unit>> create();
  Future<Either<NoteFailure, Unit>> update();
  Future<Either<NoteFailure, Unit>> delete();
}
