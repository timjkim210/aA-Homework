class Person < ApplicationRecord
    validates :house_id, presence: true
    validates :name, presence: true

    belongs_to :person, 
        primary_key: :id,
        foreign_key: :house_id,
        class_name: :House
    
end