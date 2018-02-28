class BeachSerializer
  include FastJsonapi::ObjectSerializer
  cache_options enabled: true, cache_length: 12.hours
  attributes :name, :city, :state, :slug
end