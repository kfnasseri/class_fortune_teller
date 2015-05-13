class NumbersController < ApplicationController
  def lucky_numbers
    @first_number = rand(100)
    @second_number = rand(100)
    @third_number = rand(100)
    @fourth_number = rand(100)
    @fifth_number = rand(100)
  end

  def unlucky_numbers
    @numbers = [rand(1..100), rand(1..100), rand(1..100), rand(1..100), rand(1..100)]
  end

  def random
    # params = {"akasdflas"}
    # to access the hash, use the code below - make sure to covert to integer if needed
    @num = params["num"]
    @the_number = rand(params["num"].to_i)
  end
end
