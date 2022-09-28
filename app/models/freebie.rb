class Freebie < ActiveRecord::Base
    belongs_to :devs
    belongs_to :companies

    def dev
        self.dev_id
    end

    def company
        self.company_id
    end

    # def print_details
    #     "#{dev name} owns a #{self.item_name} from #{self.company_name}"
    # end
end
