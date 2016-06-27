require '003_simple_store'

class Task < SimpleStore
  attr_accessor :description, :done

  def to_s
    description
  end

  def done?
    done
  end

end
