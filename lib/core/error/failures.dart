abstract class Failure {}

class SoketFailure implements Failure {
  SoketFailure(this.message);
  String? message;

  @override
  String toString() {
    return this.message ?? "Error SoketExceprion";
  }
}

class HttpFailure implements Failure {
  HttpFailure(this.message);
  String? message;

  @override
  String toString() {
    return this.message ?? "Error HttpFailure";
  }
}

class FormatFailure implements Failure {
  FormatFailure(this.message);
  String? message;

  @override
  String toString() {
    return this.message ?? "Error FormatFailure";
  }
}

class OrdersFailure implements Failure {
  OrdersFailure(this.message);
  String? message;

  @override
  String toString() {
    return this.message ?? "Error OrdersFailure";
  }
}

class DisputeFailure implements Failure {
  DisputeFailure(this.message);
  String? message;

  @override
  String toString() {
    return this.message ?? "Error DisputeFailure";
  }
}

class StorageFailure implements Failure {
  StorageFailure(this.message);
  String? message;

  @override
  String toString() {
    return this.message ?? "Error StorageFailure";
  }
}

class AddressFailure implements Failure {
  AddressFailure(this.message);
  String? message;

  @override
  String toString() {
    return this.message ?? "Error AddressFailure";
  }
}
