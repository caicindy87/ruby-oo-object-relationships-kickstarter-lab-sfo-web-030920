class ProjectBacker
    attr_reader :project, :backer
    @@all = []
    def initialize(project_obj, backer_obj)
        @project = project_obj
        @backer = backer_obj
        @@all << self
    end

    def self.all
        @@all
    end
end