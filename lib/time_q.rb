require "time_q/version"
require "time_q/query"

module TimeQ
  def self.parse(arr)
    arr.map do |item|
      params = item.split("\t")
      Query.new(params[0], params[1], params[2], params[3])
    end
  end

  def self.max_queries(queue)
    q_queue = parse(queue)
    sorted_q = q_queue.sort { |a, b| a.finish <=> b.finish }

    len = 0
    last_finish = {}
    sorted_q.each do |q|
      last_finish[q.api_id] ||= 0
      if q.start >= last_finish[q.api_id]
        len += 1
        last_finish[q.api_id] = q.finish
      end
    end

    len
  end
end
