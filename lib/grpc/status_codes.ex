defmodule GRPC.StatusCodes do
  @moduledoc """
    grpc status codes are defined at
    https://github.com/grpc/grpc/blob/master/doc/statuscodes.md

    you can  use encode or decode to get the status code.
    ```
    GRPC.StatusCodes.encode(:CANCELLED) #=> 1
    GRPC.StatusCodes.decode(12) #=> UNIMPLEMENTED
    GRPC.StatusCodes.decode_message(11) #=> "11: operation was attempted past the valid range"
    ```
  """
  codes = [
    OK: %{code: 0, message: "0: ok"},
    CANCELLED: %{code: 1, message: "1: operation was canceled"},
    UNKNOWN: %{code: 2, message: "2: unknown error"},
    INVALID_ARGUMENT: %{code: 3, message: "3: client specified an invalid argument"},
    DEADLINE_EXCEEDED: %{code: 4, message: "4: deadline exceeded"},
    NOT_FOUND: %{code: 5, message: "5: operation was canceled"},
    ALREADY_EXISTS: %{code: 6, message: "6: creating an entity failed because already exists"},
    PERMISSION_DENIED: %{code: 7, message: "7: caller does not have permission to execute the specified operation"},
    RESOURCE_EXHAUSTED: %{code: 8, message: "8: some resource has been exhausted"},
    FAILED_PRECONDITION: %{code: 9, message: "9: oystem is not in a state required for the operation's execution"},
    ABORTED: %{code: 10, message: "10: operation was aborted"},
    OUT_OF_RANGE: %{code: 11, message: "11: operation was attempted past the valid range"},
    UNIMPLEMENTED: %{code: 12, message: "12: operation is not implemented or not supported/enabled"},
    INTERNAL: %{code: 13, message: "13: internal errors"},
    UNAVAILABLE: %{code: 14, message: "14: service is currently unavailable"},
    DATA_LOSS: %{code: 15, message: "15: unrecoverable data loss or corruption"},
    UNAUTHENTICATED: %{code: 16, message: "16: equest does not have valid authentication credentials"}
  ]
  for {key, value} <- codes do
    def encode(unquote(key)), do: unquote(value[:code])
    def decode(unquote(value[:code])), do: unquote(key)
    def decode_message(unquote(value[:code])), do: unquote(value[:message])
  end
end
