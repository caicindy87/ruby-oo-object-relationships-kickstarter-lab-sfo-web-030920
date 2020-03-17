class Backer
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project_obj)
        ProjectBacker.new(project_obj, self)
    end

    def backed_projects
        p_bs = ProjectBacker.all.select {|p_b| p_b.backer == self}
        p_bs.collect {|p_b| p_b.project}
    end
end