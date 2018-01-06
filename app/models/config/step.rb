class Config::Step
  include Mongoid::Document

  field :step_position, type: Integer
  field :step_name, type: String

  default_scope { order_by(step_position: "asc") }
end
