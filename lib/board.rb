class Board

  attr_accessor :locations

  def initialize(locations = empty_locations)
    @locations = locations
  end

  def place(token, row, column)
    locations[row][column] = token
  end

  def token_at(row, column)
    @locations.dig(row, column)
  end

  def reset
    self.locations = empty_locations
  end

  def empty?
    locations == empty_locations
  end

  def full?
    locations.values.all? { |row| row.compact.keys.length == 3}
  end

  def to_s
    <<~BOARD
      #{token_at(:top, :left) || ' '}|#{token_at(:top, :middle) || ' '}|#{token_at(:top, :right) || ' '}
      -----
      #{token_at(:middle, :left) || ' '}|#{token_at(:middle, :middle) || ' '}|#{token_at(:middle, :right) || ' '}
      -----
      #{token_at(:bottom, :left) || ' '}|#{token_at(:bottom, :middle) || ' '}|#{token_at(:bottom, :right) || ' '}
    BOARD
  end

  private

  def empty_locations
    {
      top: {left: nil, middle: nil, right: nil},
      middle: {left: nil, middle: nil, right: nil},
      bottom: {left: nil, middle: nil, right: nil}
    }
  end

end
