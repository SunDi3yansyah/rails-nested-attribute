json.extract! category, :id, :parent_id, :name, :created_at, :updated_at

json.set! :parent do
  json.set! json.extract! category, :parent_id
  json.parent_url category_url(category.parent_id, format: :json) if category.parent_id.present?
end

json.url category_url(category, format: :json)

unless category.children.empty?
  json.category do
    json.partial! 'categories/category', collection: category.children, as: :category
  end
end
