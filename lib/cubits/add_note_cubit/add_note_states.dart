class AddNoteStates{}

class AddNoteInitial extends AddNoteStates{}
class AddNoteLoading extends AddNoteStates{}
class AddNoteSuccess extends AddNoteStates{}
class AddNoteFailure extends AddNoteStates{
  final String errorMessage;

  AddNoteFailure(this.errorMessage);
}