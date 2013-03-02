module ApplicationHelper
  
  def title
    base_title = "CitGraph - Graph of Citations"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end 
end
