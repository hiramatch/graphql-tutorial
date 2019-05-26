module Types
  class QueryType < BaseObject
    # queries are just represented as fields
    # `all_links` is automatically camelcased to `allLinks`
    field :all_links, [LinkType], null: false
    field :link, LinkType, null: false do
      argument :id, ID, required: true
    end

    # this method is invoked, when `all_link` fields is being resolved
    def all_links
      Link.all
    end

    def link(id:)
      Link.find(id)
    end
  end
end