json.array!(@accounts) do |account|
  json.extract! account, :id, :account_type, :credit_limit, :bank_id
  json.url account_url(account, format: :json)
end
