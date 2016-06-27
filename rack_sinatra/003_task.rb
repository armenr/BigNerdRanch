# class Task < SimpleStore
#   # attr_accessor :description, :done
#   #
#   # def to_s
#   #   description
#   # end
#   #
#   # def done?
#   #   done
#   # end
#
#
#
# end

class Task
  include DataMapper::Resource

  property :id, Serial
  property :description, String
  property :done, Boolean
  property :due_date, Date

  def due_date=(date)
    date = nil if date ==''
    super date
  end

  def to_s
    description.to_s
  end

end
