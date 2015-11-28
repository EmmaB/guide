json.array!(@sections) do |section|
  json.extract! section, :id, :user_id, :name, :description, :section_id
  json.url section_url(section, format: :json)
end
