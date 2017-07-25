defmodule GRPC.StatusCodesTest do
  use ExUnit.Case, async: true
  alias GRPC.StatusCodes

  test "encode/1" do
    assert StatusCodes.encode(:OK) == 0
    assert StatusCodes.encode(:CANCELLED) == 1
    assert StatusCodes.encode(:OUT_OF_RANGE) == 11
  end

  test "decode/1" do
    assert StatusCodes.decode(0) == :OK
    assert StatusCodes.decode(1) == :CANCELLED
    assert StatusCodes.decode(11) == :OUT_OF_RANGE
  end

  test "decode_message/1" do
    assert StatusCodes.decode_message(0) ==
      "0: ok"
    assert StatusCodes.decode_message(11) ==
      "11: operation was attempted past the valid range"
    assert StatusCodes.decode_message(1) ==
      "1: operation was canceled"
  end
end
