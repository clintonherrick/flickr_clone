class ImageAttachmentsController < ApplicationController

  def update
    respond_to do |format|
      if @image_attachment.update(image_attachment_params)
        format.html { redirect_to @image_attachment.image, notice: 'Your image attachment was successfully updated.' }
      end
    end
  end

end
