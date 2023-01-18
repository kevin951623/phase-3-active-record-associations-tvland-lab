class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
    belongs_to :actors
    
    def full_name
        "#{first_name} #{last_name}"
    end

    def list_roles
        self.characters.map {|c| "#{c.name} - #{c.show.name}"}
    end
end