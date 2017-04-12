# Generated by `mix grpc.gen.server`.
# Please implement all functions.
<%= Enum.map proto.services, fn(service) -> %>
defmodule <%= top_mod %>.<%= service.name %>.Server do
  use GRPC.Server, service: <%= top_mod %>.<%= service.name %>.Service

  <%= for rpc <- service.rpcs do %>
  def <%= compose_rpc.(rpc) %> do
  end

  <% end %>
end
<% end %>
