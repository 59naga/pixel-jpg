# Dependencies
pixelJpeg= require '../src'
fixture= (require 'fixture-images').still.jpg

# Specs
describe 'pixelJpg',->
  it '.parse', (done)->
    pixelJpeg.parse fixture
    .then (images)->
      image= images[0]

      expect(image.width).toBe 256
      expect(image.height).toBe 192
      expect(image.data?.length).toBe image.width*image.height*4

      done()
