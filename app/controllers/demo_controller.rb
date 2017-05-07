class DemoController < ApplicationController
  
  layout false
  demo_index_url = 3

  def index
  end

  def demo_index_url
  end

  def hello
  	#render('index')
  end

  def other_hello
  	redirect_to(:controller => 'demo', :action => 'index')
  end

  def lynda
  	redirect_to("http://lynda.com")
  end
end
