module ApplicationHelper
  def display_background_image_path(image, options = {})
    if image.blank?
      '/assets/cosmo.jpg'
    else
      cl_image_path image, options
    end
  end
end
