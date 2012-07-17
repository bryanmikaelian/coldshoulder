module Coldshoulder::Commands
  def register(command)
    @commands ||= Hash.new
  end

end
