class DemoController < ApplicationController

  layout false

  demo_index_url = 3

  def index
  end

  def hello
  	# render('index')
    @array = [1,2,3,4,5]
  end

  def lynda
  	redirect_to("http://lynda.com")
  end
end
