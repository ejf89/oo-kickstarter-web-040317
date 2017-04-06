require 'pry'
require 'backer.rb'

class Project
    attr_accessor :title, :backers

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        @backers << backer
        @backers
        unless backer.backed_projects.include? self
            backer.back_project(self)
        end
    end
end
