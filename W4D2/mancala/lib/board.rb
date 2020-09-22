class Board
  attr_accessor :cups

  def initialize(name1, name2)  
    @cups = Array.new(14) {Array.new()}
    @player_1 = name1
    @player_2 = name2
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each

    @cups.each_with_index do |cup, idx|
      if idx != 6 || idx != 13 
        4.times { cup << :stone } 
      end
    end
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' if !(0..13).to_a.include?(start_pos)
    raise 'Starting cup is empty' if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    start_cup = @cups[start_pos]
    @cups[start_pos] = []
      
    current_pos = start_pos
    until start_cup.empty?
      next_pos = (current_pos % 14) + 1
      case next_pos
      when 6
        @cups[next_pos] << start_cup.shift if current_player_name == @player_1
      when 13
        @cups[next_pos] << start_cup.shift if current_player_name == @player_2
      else
        @cups[next_pos] << start_cup.shift
      end
    end
    render
    next_turn(next_pos)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx @cups[ending_cup_idx].length == 1
      :switch 
    elsif ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    else
    ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].empty? || @cups[7..12].empty?
  end

  def winner
    case @cups[6].counts <=> @cups[13].count
    when -1
      "#{@player_1} is the winner!"
    when 0
      "Game is tied"
    when 1
      "#{@player_2} is the winner!"
    end
  end
end
