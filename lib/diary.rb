class Diary

  def initialize
    @locked = true
  end

  def lock

  end

  def unlock
  end

  def add_entry
    fail 'Diary is locked' unless @locked == false
  end

  def get_entries
    fail 'Diary is locked' unless @locked == false
  end

end
