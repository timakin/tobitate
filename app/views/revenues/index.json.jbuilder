json.array!(@revenues) do |revenue|
  json.extract! revenue, :id, :title, :description, :price, :originality, :confirmed
  json.url revenue_url(revenue, format: :json)
end
