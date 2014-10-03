module ApplicationHelper
  def set_header
    text = case params[:header]
    when "ruby"
      <<-HEADER 
        <h1 class="ruby_jobs">&nbsp;&nbsp;<p>&nbsp;&nbsp;</p></h1>
      HEADER
    when "python"
      <<-HEADER 
        <h1 class="python_jobs">&nbsp;&nbsp;<p>&nbsp;&nbsp;</p></h1>
      HEADER
    when "mobile"
      <<-HEADER 
        <h1 class="mobile_jobs">&nbsp;&nbsp;<p>&nbsp;&nbsp;</p></h1>
      HEADER
    else
      <<-HEADER 
        <h1 class="ruby_jobs">&nbsp;&nbsp;<p>&nbsp;&nbsp;</p></h1>
      HEADER
      
    end 
  
    text.html_safe
    
  end
  
  def set_title
    content_for :title do
      case params[:header]
      when "ruby"
        "Jobs for Ruby , Ruby & Rails Jobs"
      when "python"
        "Jobs for Python and Django"
      else
        "Jobs for Mobile Developer"
      end
    end
  end
  
end
