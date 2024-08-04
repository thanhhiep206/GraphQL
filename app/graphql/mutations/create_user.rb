# frozen_string_literal: true

module Mutations
  class CreateUser < BaseMutation
    argument :email, String, required: true
    argument :first_name, String, required: true
    argument :last_name, String
    argument :role, String, required: true

    field :user, Types::UserType, null: false
    field :errors, [String], null: false
    def resolve(email:, first_name:, last_name:, role:)
      user = User.new(email: email, first_name: first_name, last_name: last_name, role: role)
      if user.save
        { user: user, errors: [] }
      else
        { user: nil, errors: user.errors.full_messages }
      end
    end
  end
end
