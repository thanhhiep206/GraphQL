# frozen_string_literal: true

module Types
  class UserRoleEnum < Types::BaseEnum
    value "ADMIN", value: "admin"
    value "USER", value: "user"
  end
end
