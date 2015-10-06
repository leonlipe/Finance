json.array!(@parcialities) do |parciality|
  json.extract! parciality, :id, :description, :with_interest, :total_amount, :date_start, :same_day_charge, :last_payment, :total_months, :account_id, :notes
  json.url parciality_url(parciality, format: :json)
end
