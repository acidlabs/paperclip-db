ActionController::Routing::Routes.draw do |map|
  match 'paperclipdb/*dir_name/:file_name.:format' => 'paperclipdb/attachments#get_attachment'
end
