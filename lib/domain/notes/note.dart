import 'package:dartz/dartz.dart';
import 'package:ddd/domain/core/failures.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:ddd/domain/notes/todo_item.dart';
import 'package:ddd/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'note.freezed.dart';

@freezed
abstract class Note with _$Note {
  const Note._();
  const factory Note({
    required UniqueId id,
    required NotesBody body,
    required NoteColor color,
    required List3<TodoItem> todos,
  }) = _Note;
  factory Note.empty() => Note(
        id: UniqueId(),
        body: NotesBody(''),
        color: NoteColor(NoteColor.colors[0]),
        todos: List3(emptyList()),
      );

  Option<ValueFailure<dynamic>> get failureOption => body.failureOrUnit
      .andThen(todos.failureOrUnit)
      .andThen(todos.getORCrash
          .map((todoItem) => todoItem.failureOption)
          .filter((o) => o.isSome())
          .getOrElse(0, (_) => none())
          .fold(() => right(unit), (f) => left(f)))
      .fold((l) => some(l), (_) => none());
}
