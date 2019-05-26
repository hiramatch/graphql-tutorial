module Types
  class LinkType < BaseObject
    description "This is LinkType"
    field :id, ID, null: false
    field :url, String, null: false
    field :description, String, null: false
  end
end