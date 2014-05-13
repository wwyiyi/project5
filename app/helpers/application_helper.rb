module ApplicationHelper
<<<<<<< HEAD
# Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Project5"
    if page_title.empty?
=======

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty? 
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
