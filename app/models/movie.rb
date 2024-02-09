# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
#4 This model is created via the command at step #3 to inherit all the useful methods we would like to use. -> SEARCH _movies.rb for #5

class Movie < ApplicationRecord
end
