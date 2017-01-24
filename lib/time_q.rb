require "time_q/version"

module TimeQ
  def self.parse(arr)
    arr.map { |item| item.split("\t") }
  end
end
