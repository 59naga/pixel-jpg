# Dependencies
PixelUtil= (require 'pixel-util').PixelUtil
jpegJs= require 'jpeg-js'

class PixelJpeg extends PixelUtil
  parse: (file)->
    @createBuffer file
    .then (buffer)=>
      jpegData= jpegJs.decode buffer

      image= @createImageData jpegData.width,jpegData.height
      type= Object.prototype.toString.call image.data
      if type is '[object CanvasPixelArray]'
        @put image,jpeg
      else
        image.data.set jpegData.data
        delete jpegData.data

      image[key]= value for key,value of jpegData

      [image]

  put: (image,jpeg)->
    if image.data.length isnt jpeg.data.length
      throw new RangeError("Source is invalid(#{image.data.length} != #{jpeg.data.length})")

    i= 0
    while jpeg.data[i]?
      image.data[i]= jpeg.data[i]

      i++

module.exports= new PixelJpeg
module.exports.PixelJpeg= PixelJpeg