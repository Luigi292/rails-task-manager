class Task < ApplicationRecord
    attribute :title, :string
    attribute :details, :text
    attribute :completed, :boolean, default: false
  end
