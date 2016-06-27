require '003_simple_store'

class Task < SimpleStore
  attr_accessor :description

  def to_s
    description
  end
end
