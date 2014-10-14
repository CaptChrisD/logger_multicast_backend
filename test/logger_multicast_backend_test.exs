defmodule LoggerMulticastBackendTest do

  use ExUnit.Case
  require Logger

  test "logging doesn't crash" do
    Logger.add_backend LoggerMulticastBackend
    Logger.debug "this should write to the multicast socket!  make sure it does"
  end
  
end

