class Project
    attr_reader :title
    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer_obj)
        ProjectBacker.new(self, backer_obj)
    end

    def backers
        p_bs = ProjectBacker.all.select{|p_b| p_b.project == self}
        p_bs.collect{|p_b| p_b.backer}
    end
end