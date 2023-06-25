class Bill < ApplicationRecord
  belongs_to :employee
  self.inheritance_column = 'inherited_name'
end
