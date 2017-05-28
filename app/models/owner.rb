class Owner < ApplicationRecord
	has_many :projects, dependent: :destroy
	has_many :payments, dependent: :destroy	

	def projects
    	Project.where(:owner_id => self.id).to_a 
  	end

  	def payments
  		Payment.where(:owner_id => self.id).to_a
  	end

  	def totalpayments
  	    @total_payments = Payment.where(:owner_id => self.id).sum(:amount)
  	end

  	def projectcost
  		@projectcost = Project.where(:owner_id => self.id).sum(:projectcost)
  	end

  	def balance
  		projectcost - @total_payments 
  	end

end
