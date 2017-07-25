defmodule GRPC.Errors do
  alias GRPC.StatusCodes

  defmodule Canceled do
    defexception [message: StatusCodes.decode_message(1), code: 1]
  end

  defmodule Unknown do
    defexception [message: StatusCodes.decode_message(2), code: 2]
  end

  defmodule InvalidArgument do
    defexception [message: StatusCodes.decode_message(3), code: 3]
  end

  defmodule Timeout do
    defexception [message: StatusCodes.decode_message(4), code: 4]
  end

  defmodule NotFound do
    defexception [message: StatusCodes.decode_message(5), code: 5]
  end

  defmodule AlreadyExists do
    defexception [message: StatusCodes.decode_message(6), code: 6]
  end

  defmodule PermissionDenied do
    defexception [message: StatusCodes.decode_message(7), code: 7]
  end

  defmodule ResourceExhausted do
    defexception [message: StatusCodes.decode_message(8), code: 8]
  end

  defmodule FailedPrecondition do
    defexception [message: StatusCodes.decode_message(9), code: 9]
  end

  defmodule Aborted do
    defexception [message: StatusCodes.decode_message(10), code: 10]
  end

  defmodule OutOfRange do
    defexception [message: StatusCodes.decode_message(11), code: 11]
  end

  defmodule Unimplemented do
    defexception [message: StatusCodes.decode_message(12), code: 12]
  end

  defmodule Internal do
    defexception [message: StatusCodes.decode_message(13), code: 13]
  end

  defmodule Unavailable do
    defexception [message: StatusCodes.decode_message(14), code: 14]
  end

  defmodule DataLoss do
    defexception [message: StatusCodes.decode_message(15), code: 15]
  end

  defmodule Unauthenticated do
    defexception [message: StatusCodes.decode_message(6), code: 16]
  end
end
