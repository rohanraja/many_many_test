class Choice < ActiveRecord::Base
belongs_to :student


	def get_meals()

		meals = []

		YAML.load(ch_array).each do |c|

			meals << Meal.find(c)

		end

		return meals

	end



end
