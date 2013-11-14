class Choice < ActiveRecord::Base
belongs_to :student


	def get_meals()

		meals = []

		YAML.load(ch_array).each do |c|

			meals << Meal.find(c)

		end

		return meals

	end

	
	def count_total

		cnt = 0

		Choice.all.each do |c|

			meals = c.get_meals

			meals.each do |m|

				if m.id == id
					cnt = cnt + 1
				end
			end

		end


		Meal.find(id).update({:enrolled_no_of_students => cnt})

		return cnt

	end

end
