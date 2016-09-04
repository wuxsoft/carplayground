#
class Position
  def initialize(ages)
    @x = ages[0].to_i
    @y = ages[1].to_i
  end
  attr_accessor :x, :y
end

class Location < Position
  def initialize(ages)
    @x = ages[0].to_i
    @y = ages[1].to_i
    @direction = ages[2].downcase
    @operational = ages[3]
    # l-left r-right m-move
    @spin = ["l", "r", "m"]
    # n-north e-east s-south w-west
    @aspect = ["n", "e", "s", "w"]
    @position = Position.new([0, 0])
  end
  attr_accessor :direction, :operational, :position
  def move(position)
    @position = position
    operationals = @operational.downcase.split(%r{\s*})
    operationals.each do |item|
      if @aspect.include?(@direction) && @spin.include?(item)
        move_direction_x_y(item)
      else
        puts "指令#{item.upcase}错误"
      end
    end
  end

  private
  def move_direction_x_y(spin)
    if spin != "m"
      move_direction(spin)
    else
      move_x_y
    end
  end

  def move_x_y
    if @direction == "n"
      move_position_y(1)
    elsif @direction == "e"
      move_position_x(1)
    elsif @direction == "s"
      move_position_y(-1)
    else
      move_position_x(-1)
    end
  end
  def move_position_x(x)
    _x = @x
    @x += x
    # 超出边界不移动
    # @x = _x if !(0..@position.x).include?(@x)
    if !(0..@position.x).include?(@x)
      @x = _x
      puts "前方有障碍物不能移动"
    end
  end

  def move_position_y(y)
    _y = @y
    @y += y
    # 超出边界不移动
    # @y = _y if !(0..@position.y).include?(@y)
    if !(0..@position.y).include?(@y)
      @y = _y
      puts "前方有障碍物不能移动"
    end
  end

  def move_direction(spin)
    index = @aspect.index(@direction)
    if spin == "l"
      index -= 1
    else
      index += 1
    end
    # 只能在四个方向变化
    index = 3 if index < 0
    index = 0 if index > 3
    @direction = @aspect[index]
  end
end

class Car
  def initialize
    @position = Position.new []
    @locations = []
  end
  attr_accessor :position, :locations
  def position=(value)
    puts value
    values = value.split
    case values.count
    when 2 then
      @position = Position.new(values)
    when 3 then
      location = Location.new(values)
      @locations.push(location)
    else
      @locations[-1].operational = value
    end
    value
  end

  def run
    position = ["Expected Output:"]
    puts position.join
    @locations.each do |item|
      item.move(@position)
      result = "#{item.x} #{item.y} #{item.direction.upcase}"
      puts result
      position.push(result)
    end
    position.join("\n")
  end
end

class Carmove
  def run
    puts "Test Input:"
    car = Car.new
    car.position= "5 5"
    car.position= "1 2 N"
    car.position= "LMLMLMLMM"
    car.position= "3 3 E"
    car.position= "MMRMMRMRRM"
    car.run
  end
end
# cardmove = Carmove.new
# cardmove.run
