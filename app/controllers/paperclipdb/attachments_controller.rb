class Paperclipdb::AttachmentsController < ApplicationController
  
  def get_attachment
    dir_name = '/' + params[:dir_name]
    base_name = params[:file_name] + '.' + params[:format]
    attachment = Paperclipdb::Attachment.find(:first, :conditions => [ "base_name = ? AND dir_name = ?", base_name, dir_name ])
    if(attachment == nil)
      raise ActionController::RoutingError.new('Image not Found')
    else
      send_data(attachment.file_data, :type => attachment.content_type)
    end
  end
  
end
