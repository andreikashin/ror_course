class GreeterController < ApplicationController
#  def hello
#  end
#  def goodbye
#  end
# Let's move business logic from View to Controller (here)
  def hello
    random_names = ["Alex", "Joe", "Michael"]
    @name = random_names.sample
    @time = Time.now

    # will create new variable each time request sent
    @counter ||= 0
    @counter += 1
  end
end
