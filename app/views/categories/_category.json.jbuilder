json.extract! category, :id, :parent_id, :name, :created_at, :updated_at
json.url category_url(category, format: :json)
unless category.children.empty?
  json.category do
    json.partial! 'categories/category', collection: category.children, as: :category
  end
end
