class RoleResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id, link_to_resource: true
  field :name, as: :text
  field :users, as: :has_and_belongs_to_many
  field :resource, as: :belongs_to, polymorphic_as: :resource, types: [::Forum]
end
