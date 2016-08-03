class Solver
  IMPORTANT = 1
  NOT_IMPORTANT = 0
  def initialize(min_important, contests)
    @min_important = min_important
    @important = []
    @not_important = []
    contests.each do |val, type|
      case type
      when IMPORTANT
        @important << val
      when NOT_IMPORTANT
        @not_important << val
      end
    end
    @important.sort!
  end

  def run
    losses = []
    @min_important.times do
      losses << @important.pop.to_i
    end
    @not_important.inject(0, &:+) +
      losses.inject(0, &:+) -
      @important.inject(0, &:+)
  end
end
