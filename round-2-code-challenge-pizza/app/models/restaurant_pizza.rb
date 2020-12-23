class RestaurantPizza < ApplicationRecord
    belongs_to :pizza  
    belongs_to :restaurant  

    validates :price, numericality: {greater_than_or_equal_to: 1, 
                                    less_than_or_equal_to:30}

end