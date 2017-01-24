module TimeQ
  class Query
    attr_reader :node_id, :start, :finish, :api_id

    def initialize(node_id, start, duration, api_id)
      @node_id = node_id
      @start = start.to_i
      @duration = duration.to_i
      @finish = @start + @duration
      @api_id = api_id
    end

    def ==(rhs)
      self.node_id == rhs.node_id &&
        self.start == rhs.start &&
        self.finish == rhs.finish &&
        self.api_id == rhs.api_id
    end
  end
end
