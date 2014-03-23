json.array!(@projects) do |project|
  json.extract! project, :id, :title, :description, :goal_price, :start_date, :limit_date, :now_price
  json.url project_url(project, format: :json)
end
