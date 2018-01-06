class Event
  include Mongoid::Document
  field :event_type, type: String
end
