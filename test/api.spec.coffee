# Dependencies
pixelJpeg= require '../src'
fixture= (require 'fixture-images').still.jpg

# Specs
describe 'pixelJpeg',->
  it '.parse', (done)->
    pixelJpeg.parse fixture
    .then (images)->
      image= images[0]

      expect(image.width).toBe 256
      expect(image.height).toBe 192
      expect(image.data?.length).toBe image.width*image.height*4

      done()
    
  it '.put(IE10 or less)', ->
    fakeCanvasPixelArray= data: new Array 10
    fakeJpegData= data: [0,1,2,3,4,5,6,7,8,9]

    pixelJpeg.put fakeCanvasPixelArray,fakeJpegData

    expect(fakeCanvasPixelArray.data[0]).toBe 0
    expect(fakeCanvasPixelArray.data[9]).toBe 9