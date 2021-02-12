// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TaskStateTearOff {
  const _$TaskStateTearOff();

// ignore: unused_element
  _TaskState call({@required List<TaskEntity> taskList}) {
    return _TaskState(
      taskList: taskList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TaskState = _$TaskStateTearOff();

/// @nodoc
mixin _$TaskState {
  List<TaskEntity> get taskList;

  @JsonKey(ignore: true)
  $TaskStateCopyWith<TaskState> get copyWith;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res>;
  $Res call({List<TaskEntity> taskList});
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res> implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  final TaskState _value;
  // ignore: unused_field
  final $Res Function(TaskState) _then;

  @override
  $Res call({
    Object taskList = freezed,
  }) {
    return _then(_value.copyWith(
      taskList:
          taskList == freezed ? _value.taskList : taskList as List<TaskEntity>,
    ));
  }
}

/// @nodoc
abstract class _$TaskStateCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$TaskStateCopyWith(
          _TaskState value, $Res Function(_TaskState) then) =
      __$TaskStateCopyWithImpl<$Res>;
  @override
  $Res call({List<TaskEntity> taskList});
}

/// @nodoc
class __$TaskStateCopyWithImpl<$Res> extends _$TaskStateCopyWithImpl<$Res>
    implements _$TaskStateCopyWith<$Res> {
  __$TaskStateCopyWithImpl(_TaskState _value, $Res Function(_TaskState) _then)
      : super(_value, (v) => _then(v as _TaskState));

  @override
  _TaskState get _value => super._value as _TaskState;

  @override
  $Res call({
    Object taskList = freezed,
  }) {
    return _then(_TaskState(
      taskList:
          taskList == freezed ? _value.taskList : taskList as List<TaskEntity>,
    ));
  }
}

/// @nodoc
class _$_TaskState implements _TaskState {
  const _$_TaskState({@required this.taskList}) : assert(taskList != null);

  @override
  final List<TaskEntity> taskList;

  @override
  String toString() {
    return 'TaskState(taskList: $taskList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskState &&
            (identical(other.taskList, taskList) ||
                const DeepCollectionEquality()
                    .equals(other.taskList, taskList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(taskList);

  @JsonKey(ignore: true)
  @override
  _$TaskStateCopyWith<_TaskState> get copyWith =>
      __$TaskStateCopyWithImpl<_TaskState>(this, _$identity);
}

abstract class _TaskState implements TaskState {
  const factory _TaskState({@required List<TaskEntity> taskList}) =
      _$_TaskState;

  @override
  List<TaskEntity> get taskList;
  @override
  @JsonKey(ignore: true)
  _$TaskStateCopyWith<_TaskState> get copyWith;
}
