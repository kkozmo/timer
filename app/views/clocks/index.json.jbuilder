json.array!(@clocks) do |clock|
  json.extract! clock, :id, :day, :time_start, :time_end
  json.url clock_url(clock, format: :json)
end
