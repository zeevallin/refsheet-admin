require "active_model"

class GradientForm

  include ActiveModel::Validations
  include ActiveModel::Conversion

  attr_reader :id, :name, :points, :gradient, :save

  def initialize(attrs={})
    @name, @points = attrs.values_at(*%w(name points))
    @gradient = Gradient::Map.deserialize(JSON.parse(@points))
    @id = SecureRandom.uuid
    @save = attrs.fetch("save", "0") == "1"
  end

  def persisted?
    false
  end

end