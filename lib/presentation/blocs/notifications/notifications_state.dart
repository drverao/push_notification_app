part of 'notifications_bloc.dart';

sealed class NotificationsState extends Equatable {
  final AuthorizationStatus status;
  final List<dynamic> notifications;
  const NotificationsState(
      {this.status = AuthorizationStatus.notDetermined,
      this.notifications = const []});
  NotificationsState copyWith(
          {AuthorizationStatus? status, List<dynamic>? notifications}) =>
      NotificationsInitial(
        status: status ?? this.status,
        notifications: notifications ?? this.notifications,
      );

  @override
  List<Object> get props => [];
}

final class NotificationsInitial extends NotificationsState {
  const NotificationsInitial({
    super.status,
    super.notifications,
  });
}
