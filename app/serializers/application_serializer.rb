class ApplicationSerializer < ActiveModel::Serializer

  def image_url
    return 'needs callback passed' unless instance_options[:get_image_url]
    instance_options[:get_image_url].call(object.image)
  end

end