class Uploader < ApplicationRecord
    has_attached_file :avatar, :default_url => "../assets/event.jpg"
    #To Image :

    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

    #To File type of(Pdf/word)

    #validates_attachment_content_type :avatar, :content_type => [ 'application/msword', 'application/vnd.openxmlformats-            officedocument.wordprocessingml.document','application/pdf' ]


  before_post_process :rename_avatar

def rename_avatar
   extension = File.extname(avatar_file_name).downcase
   self.avatar.instance_write :file_name, "#{Time.now.to_i.to_s}#{extension}"
 end
   
end
