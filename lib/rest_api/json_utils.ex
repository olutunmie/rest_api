defmodule RestApi.JSONUtils do
  @moduledoc """
  JSOn Utilities
  """
  @doc """
  Extend Bson to encode MongoDB ObjectIds to string
  """
  # .Defining an implementation for the Jason.Encode for BSON.ObjectId
  defimpl Jason.Encoder, for: BSON.ObjectId do
    # Implementing a custom encode function
    def encode(id, options) do
      # Converting the binary id to a string
      BSON.ObjectId.encode!(id)
      # Encoding the string to JSON
      |> Jason.Encoder.encode(options)
    end
  end
end
