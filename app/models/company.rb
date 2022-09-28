class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    # def give_freedie(dev, item_name, value)
    #     Frebbie.create(item_name: "#{item_name}", value: {value}, dev_id: {dev.id}, company_id: self.id)
    # end

    def self.oldest_company
        min_year = Company.pluck(:founding_year).min
        Company.find_by("founding_year = #{min_year}")
    end
end


