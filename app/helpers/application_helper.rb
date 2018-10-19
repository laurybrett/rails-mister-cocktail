module ApplicationHelper
  def display_background_image_path(image, options = {})
    if image.blank?
      image_path('cosmo.jpg')
    else
      cl_image_path image, options
    end
  end
end
