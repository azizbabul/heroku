json.array!(@jv_scripts) do |jv_script|
  json.extract! jv_script, :id, :depo, :withd, :bal
  json.url jv_script_url(jv_script, format: :json)
end
